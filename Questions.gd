extends Node
var score = 0
var high = 0
var high2 = 0
var high3 = 0
var placeholder = 0
var questions = {
	1:["What is the country that ferrari came from", "france"," spain", "germany", "Italy", "Italy", preload("res://images/ferrari-laferrari-2311-1.jpg")],
	2:["What is the country that Lamborghini came from", "france"," spain", "germany", "Italy", "Italy", preload("res://images/lambo.jpg")],
	3:["What is the country that Aston Martin came from", "france"," spain", "England", "Italy", "England", preload("res://images/astonmartin1.jpg")],
	4:["what year did the porsche 911 debut", "1968", "1963", "1971", "1969", "1963", preload("res://images/old-new911.jpg")],
	5:["In what year did the 911 (996) GT3 rs first debut", "2000's", "1990's", "1980's", "1970's", "2000's", preload("res://images/gt3rs911.jpg")],
	6:["How many races did the Nissan GTR Nismo win", "35", "53", "41", "14", "41", preload("res://images/gtrnismo.jpg")],
	7:["Which car manufacturer has the most Endurance race wins", "Mclaren", "Ferrari", "Porsche", "Nissan", "Porsche", preload("res://images/911race.jpg")],
	8:["What is the fastest road legal car?", "Bugatti Chiron Pur Sport", "Koenigsegg Agera RS", "Mclaren P1", "Ferrari La Ferrari", "Koenigsegg Agera RS", preload("res://images/koenigsegg-chimera.jpg")],
	9:["What luxury British automobile brand was purchased by by Tata motors in 2008?", "Jaguar", "Mini Cooper", "Rolls Royce", "Aston Martin", "Jaguar", preload("res://images/jaguar-ftype-zp-edition-1.jpg")],
	10:["What is the name for the unit of measurement of power that is roughly equal to 746 watts?", "Kelowatts", "Megawatts", "Horsepower", "Pigpower", "Horsepower", preload("res://images/corvette500-1588353309.jpg")],
	11:["When found on a vehicle’s speedometer, what do the letters MPH stand for?", "Motors Per Hoursepower", "Miles Per Hour", "Motors Post Horsepower", "Monkeys Per Hour", "Miles Per Hour", preload("res://images/speedometer-1.jpg")],
	12:["What does the acronym for BMW stand for?", "Bavarian Motor Works (Bayerische Motoren Werke)", "Barbarian Motor WORKS", "Bolocks Motor Works", "Baymans Motor Works (Bayerische Motoren Werke)", "Bavarian Motor Works (Bayerische Motoren Werke)", preload("res://images/bmw-m-series-seo-overview-ms-04.jpg")],
	13:["Volvo was founded in what country?", "Sweden", "Portogese", "England", "Denmark", "Sweden", preload("res://images/volvo.jpg")],
	14:["Which English car company was bought by BMW in 28 July 1998", "Jaguar", "Mini Cooper", "Aston Martin", "Rolls Royce", "Rolls Royce", preload("res://images/phantom.jpg")],
	15:["Debuting in September 1966, what Chevrolet pony car was designed to be a competing model to the Ford Mustang?", "Chevrolet Camaro", "Chevrolet Monoco", "Chevrolet Camry", "Chevrolet Chevy", "Chevrolet Camaro", preload("res://images/camaro14.jpg")],
	16:["What does the acronym “SUV” stand for?", "Sports Utility Vehicle", "Super Urban Vehicle", "Sports Urban Vehicle", "Sports Utilitarian Vehicle", "Sports Utility Vehicle", preload("res://images/lotussuv.jpg")],
	17:["What does MPG mean in terms of fuel?", "Meters per gallon", "Miles per gallon", "Miles post gallon", "Meters post gallon", "Miles per gallon", preload("res://images/mpggage.jpg")],
	18:["What car brand uses the slogan “The Ultimate Driving Machine”?", "BMW", "Rolls Royce", "Doodge", "Mercedes", "BMW", preload("res://images/bmwlights.jpg")],
	19:["What is the top speed of the Bugatti Chiron?", "261 mph (420 km/h)", "217 mph (350 km/h)", "318 mph (512 km/h)", "305 mph (491 km/h)", "261 mph (420 km/h)", preload("res://images/bugatti.jpg")],
	20:["Which luxury car manufacturer produces the “A3,” “A4,” and “R8” models?", "Jaguar", "BMW", "Porsche", "Audi", "Audi", preload("res://images/audi_r8_drift_by_carsrus_d1cwgt1-fullview.jpg")],
	21:["What is the name of the car model famously associated with James Bond?", "Bentley Bentayga", "Ford Mostang", "Porsche Carrera GT", "Aston Martin DB5", "Aston Martin DB5", preload("res://images/daniel-craig-007.jpg-303a730-a0a1400.png")],
	22:["What is the luxury car division of Toyota called?", "Luxiom", "Infinity", "Lexus", "Brabus", "Lexus", preload("res://images/lexus-lc500-overview.jpg")],
	23:["What is the name of the luxury car manufacturer known for its “Phantom,” “Ghost,” and “Wraith” models?", "Porsche", "Mercedes Benz", "RollS Royce", "Bentley", "RollS Royce", preload("res://images/phantom.jpg")],
	24:["What is the name of the luxury car manufacturer known for its “Ghibli,” “Quattroporte,” and “Levante” models?", "Mclarean", "Alfa Romeo", "Citroen", "Maserati", "Maserati", preload("res://images/masaratti.jpg")],
	25:["Which Italian car brand is known for its ultra-luxurious and exclusive hypercars, such as the Huayra and Zonda?", "Koenigsegg", "Pagani", "Mclarean", "Bugatti", "Pagani", preload("res://images/pagani.jpg")],
	26:["Which country is home to the famous Nürburgring racetrack?", "Italy", "Sweden", "Germany", "Denmark", "Germany", preload("res://images/10-nurburgring-facts-revealed-photo-323368-s-original.jpg")],
	27:["What does RPM stand for in the context of a car’s engine?", "Rounds Per Minute", "Rotations Per Minute", "Relaxation Per Minute", "Revolutions Per Minute", "Revolutions Per Minute", preload("res://images/rpm-1166-image.jpg")],
	28:["What is the name of the famous French endurance race that lasts 24 hours?", "24 Hours of Nurburgring", "24 Hours of Le Mans", "24 Hours of Le Rolls", "24 Hours of Rolex Ring", "24 Hours of Le Mans", preload("res://images/Le-Mans-Map.jpg")],
	29:["What does ABS stand for in car technology?", "Anti braking System", "After Brake System", "Anti-lock Braking System", "Anti-slip Braking System", "Anti-lock Braking System", preload("res://images/ABS.jpg")],
	30:["What car company is known for the Twin terbo system?", "Nissan", "Doodge", "BMW", "Porsche", "Nissan", preload("res://images/turbo.png")],
	31:["Which car manufachurer is known for the nismo badge?", "Mansory", "Rolls Royce", "Nissan", "Ford", "Nissan", preload("res://images/nissan_nismoz_008_hr.jpg")],
	32:["What is Mansory to the car industry?", "luxury car modifier", "Luxury car reseller", "wheel and tire maker", "Car recoloring","luxury car modifier", preload("res://images/a00182b11ce663e047f6ff9eab110076.jpg")],
	33:["What is the most popular motorsport?", "Moto GP", "WEC Endurane Race", "Formula 1", "Nascar", "Formula 1", preload("res://images/f1 tyre.jpg")],
	34:["Do you like electric cars?", "Never in a million years", "yes", "Maybe", "No", "Never in a million years", preload("res://images/58902069-gun-pointed-at-you.jpg")],
	35:["What is Honda's Supercar?", "Honda rcs 34", "Honda GT", "Honda NSX", "Honda 3", "Honda NSX", preload("res://images/nsx_type_s_01.jpg")],
	36:["what is the most dengerous race track in the world?", "Nurburgring", "Le Mans", "Fiji Speedway", "Dubai Autodrome", "Nurburgring", preload("res://images/10-nurburgring-facts-revealed-photo-323368-s-original.jpg")],
	37:["How much did the Nurburgring cost to build?", "$30 Million", "$14.1 Million", "$40 Million", "$100 Million", "$40 Million", preload("res://images/Manthey Grello Porsche 911 GT3 R (992) Leading Schnitzelalm Mercedes-AMG GT3 on the Nürburgrin...jpg")],
	38:["What does DRS stand for?", "Doodge Rambo System", "Drag Reduction System", "Drag Reposetry Sysytem", "Dope Rotational Speed", "Drag Reduction System", preload("res://images/51F47cKdSAL._AC_UY1000_.jpg")],
	39:["Which driver has won the most F1 championships?", "Max Verstrapen", "Senna", "Lewis Hamilton", "Charles Leclerc", "Lewis Hamilton", preload("res://images/hamilton.jpg")],
	40:["Who is the greatest trio in the automotive industry?", "Jeremy Clarkson, Richard Hammond, James May", "Henry Ford, Enzo Ferrari, Ferruccio Lamborghini", "lewis Hamilton, Max verstrapen, Charles Leclerc", "Lamborghini, Ferrari, Mclaren", "Jeremy Clarkson, Richard Hammond, James May",preload("res://images/Grandtour.jpeg")],
	
}

var available_questions = questions.keys()

func get_questions(): 
	if available_questions.size() == 0:
		return null
	var question = available_questions.pick_random()
	available_questions.erase(question)
	return questions[question]
