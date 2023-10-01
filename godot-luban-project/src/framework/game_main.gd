extends Node

const config_json_path: String = "res://assets/configs/tables/"
var config: Schema

func _ready():
	config = Schema.CfgTables.new(loader)
	for i in config.TbExampleBasic.get_data_list():
		print(i.id, " ", i.name, " ", i.icon_res, " ", i.type)


func load_file(file_name:String):
	var json_file = FileAccess.open("%s%s.json" % [self.config_json_path, file_name], FileAccess.READ)
	var json_text = json_file.get_as_text()
	json_file.close()
	return JSON.parse_string(json_text)
