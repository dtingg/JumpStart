# Create a program to calculate the square footage of a room, 
# given the user enters the dimensions of the room

puts "Welcome to Dianna's Square Footage Calculator!\n\n"

print "Please enter the length of the room in feet: "
length = gets.chomp.to_f

print "Please enter the width of the room in feet: "
width = gets.chomp.to_f

puts "Your room is #{ length * width } ft²."
