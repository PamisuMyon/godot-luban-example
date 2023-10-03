extends Control


@onready var label_info: Label = $MarginContainer/LabelInfo

func _ready() -> void:
	var text = ""
	# 显示所有记录
	for i in GameMain.config.TbExampleBasic.get_data_list():
		text += "%d %s %s %d\n" % [i.id, i.name, i.icon_res, i.type]
	label_info.text = text
