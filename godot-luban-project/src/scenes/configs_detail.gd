extends Control


@onready var label_info1: Label = $MarginContainer/HBoxContainer/LabelInfo1
@onready var label_info2: Label = $MarginContainer/HBoxContainer/LabelInfo2

func _ready() -> void:
	var text = "基础示例表中所有记录：\n"
	# 显示所有记录
	for i in GameMain.config.TbExampleBasic.get_data_list():
		text += "%d %s %d\n" % [i.id, i.name, i.type]
	
	# 显示单条记录
	text += "\n根据id获取基础示例表中单条记录：\n"
	var item = GameMain.config.TbExampleBasic.get_item(1001)
	text += "%d %s %d\n" % [item.id, item.name, item.type]
	
	label_info1.text = text
	
	## 列表表
	#text = "列表表中所有记录：\n"
	#for i in GameMain.config.TbExampleList.get_data_list():
		#text += "%s %s %s %d岁 %s\n" % [i.name, i.race, i.occupation, i.age, i.origin]
		
	## 获取列表表中指定下标记录
	#text += "\n根据下标获取列表表中指定记录：\n"
	#item = GameMain.config.TbExampleList.get_data(3)
	#text += "%s %s %s %d岁 %s\n" % [item.name, item.race,item.occupation, item.age,item.origin]
	
	label_info2.text = text
