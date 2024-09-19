extends Node
var score = 0

var questions = {
	1:["What is the country that ferrari came from", "france"," spain", "germany", "Italy", "Itally", null],
	2:["What is the country that Lamborghini came from", "france"," spain", "germany", "Italy", "Itally", null],
	3:["What is the country that Aston Martin came from", "france"," spain", "England", "Italy", "England", null],
	4:["what year did the porsche 911 debut", "1968", "1963", "1971", "1969", "1963", null],
	5:["In what year did the 911 (996) GT3 rs first debut", "2000's", "1990's", "1980's", "1970's", "2000's", null],
	6:["How many races did the Nissan GTR Nismo win", "35", "53", "41", "14", "41", null],
	7:["Which car manufacturer has the most Endurance race wins", "Mclaren", "Ferrari", "Porsche", "Nissan", "Porsche", null],
	8:["What is the fastest road legal car?", "Bugatti Chiron Pur Sport", "Koenigsegg Agera RS", "Mclaren P1", "Ferrari La Ferrari", "Koenigsegg Agera RS", null],
	9:[""]
}

var available_questions = questions.keys()

func get_questions(): 
	if available_questions.size() == 0:
		return null
	var question = available_questions.pick_random()
	available_questions.erase(question)
	return questions[question]
