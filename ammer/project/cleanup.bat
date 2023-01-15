@echo off

echo "Removing build files..."

del /Q /F *.dll
del /Q /F *.exp
del /Q /F *.lib
del /Q /F *.obj

del /Q /F tmp.dialoggle.h

echo "Removing build files... done"

pause