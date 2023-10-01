set GEN_CLIENT=dotnet ..\Luban\Tools\Luban.ClientServer\Luban.ClientServer.dll

%GEN_CLIENT% -j cfg --^
 --define_file Defines\__root__.xml ^
 --input_data_dir Data ^
 --output_data_dir ..\..\godot-luban-project\assets\configs\tables  ^
 --output_code_dir ..\..\godot-luban-project\src\configs\tables ^
 --naming_convention:bean_member under_scores ^
 --gen_types code_gdscript_json,data_json ^
 --service all
pause