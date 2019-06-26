# Ada Jump Start - Lesson 09 MadLib

# Welcome user to the program
puts "Welcome to Dianna's MadLib program!"
puts "\nPlease enter the following information."

# Get input from the user
# Use up to ten different parts of speech
print "Person's name: "
name1 = gets.chomp.capitalize

print "Person's name: "
name2 = gets.chomp.capitalize

print "Adjective: "
adjective1 = gets.chomp.downcase

print "State: "
state = gets.chomp.capitalize

print "Adjective: "
adjective2 = gets.chomp.downcase

print "Vehicle: "
vehicle = gets.chomp.downcase

print "Food (plural): "
food = gets.chomp.downcase

print "Animal (plural): "
animals = gets.chomp.downcase

print "Verb (ending in -ing): "
verb = gets.chomp.downcase

print "Number: "
number = gets.chomp.capitalize

print "Liquid: "
liquid = gets.chomp.capitalize

# Print completed MadLib
puts "\nHere is your MadLib: "

puts "#{name1} and #{name2} promised to take me on a #{adjective1} road trip to #{state}.
#{name1} drove a #{adjective2} #{vehicle} and #{name2} packed some delicious #{food} for lunch.
Along the way we saw some #{animals} #{verb}. We also sang \"#{number} Bottles of #{liquid} on the Wall.\"
I had a great time!"

puts "THE END"
