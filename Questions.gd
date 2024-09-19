extends Node
var score = 0

var questions = {
	1:["What is the capital of france", "paris"," berlin", "tokyo", "sydney", "paris", null],
	2:["What is the capital of germany", "paris"," berlin", "tokyo", "sydney", "berlin", null],
	3:["what is the capital of japan", "paris"," berlin", "tokyo", "sydney", "tokyo", null]
}

var available_questions = questions.keys()

func get_questions(): 
	if available_questions.size() == 0:
		return null
	var question = available_questions.pick_random()
	available_questions.erase(question)
	return questions[question]
