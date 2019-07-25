# Ada Jump Start Live - Day 6 Exercise

characters = %w(aragorn gandalf gimli legolas)

print "Please enter a Lord of the Rings character: "
favorite_character = gets.chomp.downcase

if characters.include?(favorite_character)
  puts "This is a valid character."
else
  puts "I don't know who that is."
end
