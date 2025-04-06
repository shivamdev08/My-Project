import time

tital = 'Welcome To \'KBC Game\'\n'
print(tital.center(60))

print("Hello, What is your name?")
name = input('Enter your name : ')

hours = int(time.strftime('%H'))
if(hours >= 4 and hours < 12):
	print('Good Morning', name, '\n')
	
elif(hours >=12 and hours < 18):
	print('Good Afternoon', name, '\n')
	
elif(hours >=18 and hours < 20):
	print('Good Evening', name, '\n')
	
elif(hours >= 0 and hours < 4 or hours >= 20 and hours <= 24):
	print('Good Night', name, '\n')

def thank_for_playing( ):
	print('Thank you for playing my \'KBC Game\' game.')
	
def answer_a(answer):
	match (answer): # Right answer is 'a.'
		case 'a':
			print('Congratulation your answer is \'Right.\'\n')
			return True

		case 'b' | 'c' | 'd':
			print('Sorry your answer is \'Worng.\'\n')
			return False

		case _:
			print('Plase enter valid option. (a/b/c/d)')
			return None

def answer_b(answer):		
	match (answer): #Right answer is 'b.'
		case 'b':
			print('Congratulation your answer is \'Right.\'\n')
			return True

		case 'a' | 'c' | 'd':
			print('Sorry your answer is \'Worng.\'\n')
			return False

		case _:
			print('Plase enter valid option. (a/b/c/d)')
			return None

def answer_c(answer):		
	match (answer): #Ringt answer is 'c.'
		case 'c':
			print('Congratulation your answer is \'Right.\'\n')
			return True
			
		case 'a' | 'b' | 'd':
			print('Game Over! your answer is \'Worng.\'\n')
			return False
			
		case _:
			print('Plase enter valid option. (a/b/c/d)')
			return None

def answer_d(answer):		
	match (answer): #Right answer is 'd.'
		case 'a' | 'b' | 'c':
			print('Sorry your answer is \'Worng.\'\n')
			return False

		case 'd':
			print('Congratulation your answer is \'Right.\'\n')
			return True
		case _:
			print('Plase enter valid option. (a/b/c/d)')
			return None

def check_answer(value):
	while(True):
		if value is False :
			thank_for_playing ( )
			exit ( )
		
		elif value is None :
			while True:
				print('Enter valid option. (a/b/c/d')
				try_input = input('Enter your option (a/b/c/d) : ')
				match (try_input):
					case 'a':
						answer_a(answer)
						return True
						
					case 'b':
						answer_b(answer)
						return True
						
					case 'c':
						answer_c(answer)
						return True
						
					case 'd':
						answer_d(answer)
						return True
			
		return True

#Start of the main program.

print('''Who is the father of Computers?
a) James Gosling
b) Charles Babbage
c) Dennis Ritchie
d) Bjarne Stroustrup\n''')
answer = input('Enter your option (a/b/c/d) : ')
correct_answer = answer_b(answer)
check_answer(correct_answer)

print('''What is the main function of the CPU in a computer?
a) Store data
b) Perform calculations and execute instructions
c) Display information
d) Connect to the internet\n''')
answer = input('Enter your option (a/b/c/d) : ')
correct_answer = answer_b(answer)
check_answer(correct_answer)

print('''Which of the following is an input device?
a) Monitor
b) Printer
c) Mouse
d) Speaker\n''')
answer = input('Enter your option (a/b/c/d) : ')
correct_answer = answer_c(answer)
check_answer(correct_answer)

print('''Which of the following is an operating system?
a) WordPad
b) Microsoft Word
c) Windows
d) Adobe Photoshop\n''')
answer = input('Enter your option (a/b/c/d) : ')
correct_answer = answer_c(answer)
check_answer(correct_answer)

print('''What does 'URL' stand for?
a) Universal Resource Locator
b) Uniform Resource Locator
c) User Required Locator
d) Universal Routing Link\n''')
answer = input('Enter your option (a/b/c/d) : ')
correct_answer = answer_b(answer)
check_answer(correct_answer)

print('''What is the full form of 'HTTP'?
a) HyperText Transfer Protocol
b) HighTech Transfer Protocol
c) HyperText Translation Program
d) HighText Transfer Protocol\n''')
answer = input('Enter your option (a/b/c/d) : ')
correct_answer = answer_a(answer)
check_answer(correct_answer)
