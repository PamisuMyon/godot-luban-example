set LUBAN_DLL=..\Luban\Luban.dll

dotnet %LUBAN_DLL% ^
    -t all ^
    -c gdscript-json ^
    -d json ^
    --conf .\luban.conf ^
    -x outputCodeDir=..\..\godot-luban-project\src\configs\tables ^
    -x outputDataDir=..\..\godot-luban-project\assets\configs\tables

pause