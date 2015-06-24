def put_a_line
	puts "*"*50
end 

def ask_question(question, options)
	puts question, options 
	gets.chomp.downcase #gets.chomp always returns a string 
end 

def say(person, message)
	if person == nil 
		puts message 
	else 
	puts "#{person.capitalize}: #{message}"
	end 
end 

def display_weapon (weapon,sidekick)
	case weapon 
	when "batarang"
	say sidekick, "Awesome! A batarang! Thanks, Batman!"
	when "flashlight"
	say sidekick, "Uh...thanks? I'll make sure to keep the light on you."
	when "fists"
	say sidekick, "I don't need a weapon! I'll just use my fists like you, Batman!"
	else 
	say "Don't be selfish. Share your toys with your sidekick."
	weapon = nil 
	end 
end 

put_a_line
say nil, "After all your hardwork, you've finally become Batman!"
put_a_line

options = ["batgirl", "robin"]
begin 
	sidekick = ask_question("Who will be your sidekick?", 
		"BatGirl or Robin?")
end until options.include? sidekick 

put_a_line

weapon = ask_question("Pick a weapon for your sidekick.", 
	"batarang, flashlight, or fists")

display_weapon weapon, sidekick 
