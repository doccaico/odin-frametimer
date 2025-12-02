@echo off

if not exist "..\lib" mkdir ..\lib

cl -nologo -MT -TC -O2 -c frametimer.c
lib -nologo frametimer.obj -out:..\lib\frametimer.lib

del *.obj
