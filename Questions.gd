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
	9:["What luxury British automobile brand was purchased by Tata motors in 2008?", "Jaguar", "Mini Cooper", "Rolls Royce", "Aston Martin", "Jaguar", null],
	10:["What is the name for the unit of measurement of power that is roughly equal to 746 watts?", "Kelowatts", "Megawatts", "Horsepower", "Pigpower", "Horsepower", null],
	11:["When found on a vehicle’s speedometer, what do the letters MPH stand for?", "Motors Per Hoursepower", "Miles Per Hour", "Motors Post Horsepower", "Monkeys Per Hour", "Miles Per Hour", null],
	12:["What does the acronym for BMW stand for?", "Bavarian Motor Works (Bayerische Motoren Werke)", "Barbarian Motor WORKS", "Bolocks Motor Works", "Baymans Motor Works (Bayerische Motoren Werke)", "Bavarian Motor Works (Bayerische Motoren Werke)", null],
	13:["Volvo was founded in what country?", "Sweden", "Portogese", "England", "Denmark", "Sweden", null],
	14:["Which English car company was bought by BMW in 28 July 1998", "Jaguar", "Mini Cooper", "Aston Martin", "Rolls Royce", "Rolls Royce", null],
	15:["Debuting in September 1966, what Chevrolet pony car was designed to be a competing model to the Ford Mustang?", "Chevrolet Camaro", "Chevrolet Monoco", "Chevrolet Camry", "Chevrolet Chevy", "Chevrolet Camaro", null],
	16:["What does the acronym “SUV” stand for?", "Sports Utility Vehicle", "Super Urban Vehicle", "Sports Urban Vehicle", "Sports Utilitarian Vehicle", "Sports Utility Vehicle", null],
	17:["What does MPG mean in terms of fuel?", "Meters per gallon", "Miles per gallon", "Miles post gallon", "Meters post gallon", "Miles per gallon", null],
	18:["What car brand uses the slogan “The Ultimate Driving Machine”?", "BMW", "Rolls Royce", "Doodge", "Mercedes", "BMW", null],
	19:["What is the top speed of the Bugatti Chiron?", "261 mph (420 km/h)", "217 mph (350 km/h)", "318 mph (512 km/h)", "305 mph (491 km/h)", "261 mph (420 km/h)", null],
	20:["Which luxury car manufacturer produces the “A3,” “A4,” and “A6” models?", "Jaguar", "BMW", "Porsche", "Audi", "Audi", null],
	21:["What is the name of the car model famously associated with James Bond?", "Bentley Bentayga", "Ford Mostang", "Porsche Carrera GT", "Aston Martin DB5", "Aston Martin DB5", null],
	22:["What is the luxury car division of Toyota called?", "Luxiom", "Infinity", "Lexus", "Brabus", "Lexus", null],
	23:["What is the name of the luxury car manufacturer known for its “Phantom,” “Ghost,” and “Wraith” models?", "Porsche", "Mercedes Benz", "RollS Royce", "Bentley", "RollS Royce", null],
	24:["What is the name of the luxury car manufacturer known for its “Ghibli,” “Quattroporte,” and “Levante” models?", "Jaguar", "Alfa Romeo", "Citroen", "Maserati", "Maserati", null],
	25:["Which Italian car brand is known for its ultra-luxurious and exclusive hypercars, such as the Huayra and Zonda?", "Koenigsegg", "Pagani", "Mclarean", "Bugatti", "Pagani", null],
	26:["Which country is home to the famous Nürburgring racetrack?", "Italy", "Sweden", "Germany", "Denmark", "Germany", null],
	27:["What does RPM stand for in the context of a car’s engine?", "Rounds Per Minute", "Rotations Per Minute", "Relaxation Per Minute", "Revolutions Per Minute", "Revolutions Per Minute", null],
	28:["What is the name of the famous French endurance race that lasts 24 hours?", "24 Hours of Nurburgring", "24 Hours of Le Mans", "24 Hours of Le Rolls", "24 Hours of Rolex Ring", "24 Hours of Le Mans", null],
	29:["What does ABS stand for in car technology?", "Anti braking System", "After Brake System", "Anti-lock Braking System", "Anti-slip Braking System", "Anti-lock Braking System", null],
	30:["What car company is known for the Twin terbo system?", "Nissan", "Doodge", "BMW", "Porsche", "Nissan", null],
	31:["Which car manufachurer is known for the nismo badge?", "Mansory", "Rolls Royce", "Nissan", "Ford", "Nissan", null],
	32:["What is Mansory to the car industry?", " luxury car modifier", "Luxury car reseller", "wheel and tire maker", "Car recoloring","luxury car modifier", null],
	33:["What is the most popular motorsport?", "Moto GP", "WEC Endurane Race", "Formula 1", "Nascar", "Formula 1", null],
	34:["Do you like electric cars?", "Never in a million years", "yes", "Maybe", "No", "Never in a million years", preload("res://58902069-gun-pointed-at-you.jpg")],
	35:["What is Honda's Supercar?", "Honda rcs 34", "Honda GT", "Honda NSX", "Honda 3", "Honda NSX", preload("res://nsx_type_s_01.jpg")],
	36:["what is the most dengerous race track in the world?", "Nurburgring", "Le Mans", "Fiji Speedway", "Dubai Autodrome", "Nurburgring", preload("res://10-nurburgring-facts-revealed-photo-323368-s-original.jpg")],
	37:["How much did the Nurburgring cost to build?", "$30 Million", "$14.1 Million", "$40 Million", "$100 Million", "$40 Million", preload("res://Manthey Grello Porsche 911 GT3 R (992) Leading Schnitzelalm Mercedes-AMG GT3 on the Nürburgrin...jpg")],
	38:["What does DRS stand for?", "Doodge Rambo System", "Drag Reduction System", "Drag Reposetry Sysytem", "Dope Rotational Speed", "Drag Reduction System", null],
	39:["Which driver has won the most F1 championships?", "Max Verstrapen", "Senna", "Lewis Hamilton", "Charles Leclerc", "Lewis Hamilton", preload("res://hamilton.jpg")],
	40:["Who is the greatest trio in the automotive industry?", "Jeremy Clarkson, Richard Hammond, James May", "Henry Ford, Enzo Ferrari, Ferruccio Lamborghini", "lewis Hamilton, Max verstrapen, Charles Leclerc", "Lamborghini, Ferrari, Mclaren", "Jeremy Clarkson, Richard Hammond, James May", null],
	
}

var available_questions = questions.keys()

func get_questions(): 
	if available_questions.size() == 0:
		return null
	var question = available_questions.pick_random()
	available_questions.erase(question)
	return questions[question]
