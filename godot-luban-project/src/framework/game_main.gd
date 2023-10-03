extends Node

const config_json_path: String = "res://assets/configs/tables/"
var config: Types

func _init() -> void:
	# Luban classic导出后的脚本类为Types 这行将读取所有配置表
	config = Types.new(self)
	_debug_print_config()


## 加载配置表文件 将被Types调用
func load_file(file_name: String):
	var json_file = FileAccess.open("%s%s.json" % [self.config_json_path, file_name], FileAccess.READ)
	var json_text = json_file.get_as_text()
	json_file.close()
	return JSON.parse_string(json_text)


## 调试打印配置表内容
func _debug_print_config() -> void:
	# config.TbExampleBasic 对应配置表 ExampleBasic
	# 通过id获取记录，这里id需要为小数 坑点之一
	var item = config.TbExampleBasic.get_data(1001.)
	print(item.id, " ", item.name, " ", item.icon_res, " ", item.type)
	# 获取所有记录
	for i in config.TbExampleBasic.get_data_list():
		print(i.id, " ", i.name, " ", i.icon_res, " ", i.type)
