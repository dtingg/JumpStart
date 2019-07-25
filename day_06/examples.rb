# Ada Jump Start Live - Day 6 Examples

# 1. We want to be able to quickly determine the state abbreviation for the states in the United States.
# Determine whether it is best to use an array or a hash, and create it storing at least 4 states and their abbreviations.
# Then write code to print out only the states, then only the abbreviations, and finally nicely formatted output displaying both the states and their abbreviations (e.g., The abbreviation for Nebraska is NE)

puts "Example 1"

states = { Washington: "WA", Oregon: "OR", California: "CA", Idaho: "ID" }

puts "#{states.keys.join(", ")}"
puts "#{states.values.join(", ")}"

states.each do |name, abbreviation|
  puts "The abbreviation for #{name} is #{abbreviation}."
end

# 2. We want to be able to quickly determine the amount of different types of food items you have in your house.
# Determine whether it is best to use an array or a hash, and create it storing at least 4 food items and their quantities.
# Then write code to print out all the items and their quantities using nicely formatted output.

puts "\nExample 2"

foods = { Oranges: 3, Tortillas: 12, Cookie: 1, Popsicles: 4 }

foods.each do |food, quantity|
  puts "#{quantity} #{food}"
end
