extends Node
var score = 0

var questions = {
	1:["What is the country that ferrari came from", "france"," spain", "germany", "Italy", "Italy", null],
	2:["What is the country that Lamborghini came from", "france"," spain", "germany", "Italy", "Italy", null],
	3:["What is the country that Aston Martin came from", "france"," spain", "England", "Italy", "England", null],
	4:["what year did the porsche 911 debut", "1968", "1963", "1971", "1969", "1963", null],
	5:["In what year did the 911 (996) GT3 rs first debut", "2000's", "1990's", "1980's", "1970's", "2000's", null],
	6:["How many races did the Nissan GTR Nismo win", "35", "53", "41", "14", "41", null],
	7:["Which car manufacturer has the most Endurance race wins", "Mclaren", "Ferrari", "Porsche", "Nissan", "Porsche", null],
	8:["What is the fastest road legal car?", "Bugatti Chiron Pur Sport", "Koenigsegg Agera RS", "Mclaren P1", "Ferrari La Ferrari", "Koenigsegg Agera RS", null],
	9:["What luxury British automobile brand was purchased by by Tata motors in 2008?", "Jaguar", "Mini Cooper", "Rolls Royce", "Aston Martin", "Jaguar", null],
	10:["What is the name for the unit of measurement of power that is roughly equal to 746 watts?", "Kelowatts", "Megawatts", "Horsepower", "Pigpower", "Horsepower", null],
	11:["When found on a vehicle’s speedometer, what do the letters MPH stand for?", "Motors Per Hoursepower", "Miles Per Hour", "Motors Post Horsepower", "Monkeys Per Hour", "Miles Per Hour", null],
	12:["What does the acronym for BMW stand for?", "Bavarian Motor Works (Bayerische Motoren Werke)", "Barbarian Motor WORKS", "Bolocks Motor Works", "Baymans Motor Works (Bayerische Motoren Werke)", "Bavarian Motor Works (Bayerische Motoren Werke)", null],
	13:["Volvo was founded in what country?", "Sweden", "Portogese", "England", "Denmark", "Sweden", null],
	14:["Which English car company was bought by BMW in 28 July 1998", "Jaguar", "Mini Cooper", "Aston Martin", "Rolls Royce", "Rolls Royce", null],
	15:["Debuting in September 1966, what Chevrolet pony car was designed to be a competing model to the Ford Mustang?", "Chevrolet Camaro", "Chevrolet Monoco", "Chevrolet Camry", "Chevrolet Chevy", "Chevrolet Camaro", null]
}

var available_questions = questions.keys()

func get_questions(): 
	if available_questions.size() == 0:
		return null
	var question = available_questions.pick_random()
	available_questions.erase(question)
	return questions[question]
