# Ada Jump Start Live - Day 01 Bio Program

# Accept input from the user
print "What is your first name?: "
first_name = gets.chomp.capitalize

print "What is your last name?: "
last_name = gets.chomp.capitalize

print "What month were you born?: "
birth_month = gets.chomp.capitalize

print "What day were you born on?: "
birth_day = gets.chomp

print "What is your occupation?: "
occupation = gets.chomp.capitalize

print "Which company do you work for?: "
company = gets.chomp.capitalize

# Print a bio with the user's info to the console
print "#{first_name} #{last_name} was born on #{birth_month} #{birth_day}. #{first_name} is "

vowels = ["A", "E", "I", "O", "U"]

if vowels.include? occupation[0]
  print "an "
else
  print "a "
end

puts "#{occupation} for #{company}."
