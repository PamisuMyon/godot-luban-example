extends Control


@onready var label_info: Label = $MarginContainer/LabelInfo

func _ready() -> void:
	var text = "基础示例表中所有记录：\n"
	# 显示所有记录
	for i in GameMain.config.TbExampleBasic.get_data_list():
		text += "%d %s %s %d\n" % [i.id, i.name, i.icon_res, i.type]
	
	# 显示单条记录
	text += "\n根据id获取基础示例表中单条记录：\n"
	var item = GameMain.config.TbExampleBasic.get_data(1001.)
	text += "%d %s %s %d\n" % [item.id, item.name, item.icon_res, item.type]
	
	label_info.text = text
