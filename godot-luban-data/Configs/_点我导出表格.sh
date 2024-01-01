#!/bin/zsh
GEN_CLIENT=../Luban/Tools/Luban.ClientServer/Luban.ClientServer.dll

dotnet ${GEN_CLIENT} -j cfg --\
 -d Defines/__root__.xml \
 --input_data_dir . \
 --output_data_dir ../../godot-luban-project/assets/configs/tables \
 --output_code_dir ../../godot-luban-project/src/configs/tables \
 --naming_convention:bean_member under_scores \
 --output:data:compact_json true \
 --gen_types code_gdscript_json,data_json \
 -s all 
