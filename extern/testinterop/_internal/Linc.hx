package testinterop._internal;

import haxe.io.Path;
import haxe.macro.Expr;
import haxe.macro.Context;

using haxe.macro.PositionTools;

class Linc {

    /**
     * Adds a private internal inline static variable called __touch,
     * which sets the value to the current time so that builds are always
     * updated by the code, and native changes are dragged in automatically (except for header only changes)
     */
    public static macro function touch() : Array<Field> {

        var _fields = Context.getBuildFields();

        _fields.push({
            name: '__touch', pos: Context.currentPos(),
            doc: null, meta: [], access: [APrivate, AStatic, AInline],
            kind: FVar(macro : String, macro $v{ Std.string(Date.now().getTime()) }),
        });

        return _fields;
    }

    public static macro function buildLocalXml(_lib:String, _relative_root:String='../'):Array<Field> {
        var _pos =  Context.currentPos();
        var _pos_info = _pos.getInfos();
        var _class = Context.getLocalClass();

        var _source_path = Path.directory(_pos_info.file);
        if( !Path.isAbsolute(_source_path) ) {
            _source_path = Path.join([Sys.getCwd(), _source_path]);
        }

        _source_path = Path.normalize(_source_path);

        var _linc_lib_path = Path.normalize(Path.join([_source_path, _relative_root]));
        var _linc_include_path = Path.normalize(Path.join([ _linc_lib_path, 'project' ]));
        var _linc_lib_var = 'LIB_${_lib.toUpperCase()}_PATH';

        var _define = '<set name="$_linc_lib_var" value="$_linc_lib_path/"/>';
        var _import_path = '$${$_linc_lib_var}project/Build.xml';
        var _import = '<include name="$_import_path" />';

        _class.get().meta.add(":buildXml", [{ expr:EConst( CString( '$_define\n$_import' ) ), pos:_pos }], _pos );
        
        return Context.getBuildFields();
    }

    public static macro function buildLocalInclude(_header:String, _relative_root:String='../'):Array<Field> {
        var _pos =  Context.currentPos();
        var _pos_info = _pos.getInfos();
        var _class = Context.getLocalClass();

        var _source_path = Path.directory(_pos_info.file);
        if( !Path.isAbsolute(_source_path) ) {
            _source_path = Path.join([Sys.getCwd(), _source_path]);
        }

        _source_path = Path.normalize(_source_path);

        var _linc_lib_path = Path.normalize(Path.join([_source_path, _relative_root]));
        var _linc_include_path = Path.normalize(Path.join([ _linc_lib_path, 'project' ]));

        var _relative_path = Path.normalize(Path.join([_linc_include_path, _header]));

        var _include = _relative_path;

        _class.get().meta.add(":include", [{ expr:EConst( CString( '$_relative_path' ) ), pos:_pos }], _pos );
        
        return Context.getBuildFields();
    }
}