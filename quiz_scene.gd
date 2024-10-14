extends CanvasLayer

@onready var button: Button = $MarginContainer/GridContainer/Button
@onready var button_2: Button = $MarginContainer/GridContainer/Button2
@onready var button_3: Button = $MarginContainer/GridContainer/Button3
@onready var button_4: Button = $MarginContainer/GridContainer/Button4
@onready var quiz_number: Label = $MarginContainer/VBoxContainer/Label

@onready var quiz_text: Label = $MarginContainer/VBoxContainer/Label2
@onready var quiz_image: TextureRect = $MarginContainer/VBoxContainer/TextureRect
@onready var buttons = [button,button_2,button_3,button_4]
var quiz_num = 0
var question
var answer
var score = 0

func _ready():
	next_question()
	
func check_answer(a):
	if a == answer:
		quiz_text.text = "correrct"
		Questions.score +=1
	else: 
		quiz_text.text = "wrong, the correct answer was " + answer
	
	await get_tree().create_timer(3).timeout
	next_question()
	


func next_question(): 
	question = Questions.get_questions()
	if question == null:
		print("end of game")
		return
		pass
	
	quiz_num+=1 
	quiz_number.text = "Quiz Question No." + str(quiz_num)
	quiz_text.text = question[0]
	for i in range(0,4):
		buttons[i].text = question[i+1]
	answer = question[5]
	
	quiz_image.texture = question[6]
	enable_buttons()
	

func disable_buttons():
	button.set_disabled(true)
	button_2.set_disabled(true)
	button_3.set_disabled(true)
	button_4.set_disabled(true)

func enable_buttons():
	button.set_disabled(false)
	button_2.set_disabled(false)
	button_3.set_disabled(false)
	button_4.set_disabled(false)



func _on_button_pressed() -> void:
	disable_buttons()
	check_answer(button.text)


func _on_button_2_pressed() -> void:
	disable_buttons()
	check_answer(button_2.text)


func _on_button_3_pressed() -> void:
	disable_buttons()
	check_answer(button_3.text)

func _on_button_4_pressed() -> void:
	disable_buttons()
	check_answer(button_4.text)
