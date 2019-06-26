# Ada Jump Start - Lesson 09 Numbers

# Ask the user for three positive integers and save them as variables
print "Please enter a positive integer: "
first_int = gets.chomp.to_i

print "Please enter another positive integer: "
second_int = gets.chomp.to_i

print "Please enter one more positive integer: "
third_int = gets.chomp.to_i

# Add 20 to each number
first_int += 20
second_int += 20
third_int += 20

# Print the new values to the console
print "Twenty added to the numbers you entered gives us #{first_int}, #{second_int}, and #{third_int}."
