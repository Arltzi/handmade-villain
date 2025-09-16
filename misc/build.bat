@echo off

REM region next two comment sections are primarily for rider to easily run debug config stuff
REM create virtual drive
subst w: c:\Users\levzi\Documents\HandmadeVillain
REM goto virtual drive, set vcvarsall envvar, add misc to path
w:
call "C:\Program Files\microsoft visual studio\2022\community\vc\auxiliary\build\vcvarsall.bat" x64
set path=w:\misc;%path%
REM endregion

REM do build!
mkdir ..\..\build
pushd ..\..\build
cl -Zi w:\code\win64_handmade.cpp
popd

exit 0