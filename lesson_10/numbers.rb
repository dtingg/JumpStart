# Ada Jump Start - Lesson 10 Numbers

# Introduce the program to the user
puts "This program will ask you to enter three numbers.
It will tell you if your number is greater than or equal to or less than 20."

# Ask the user for three positive integers
# Compare the number to 20 and print an appropriate sentence
print "\nEnter the first number: "
first_int = gets.chomp.to_i

if first_int >= 20
  puts "#{first_int} is greater than or equal to 20."
else
  puts "#{first_int} is less than 20."
end

print "\nEnter the second number: "
second_int = gets.chomp.to_i

if second_int >= 20
  puts "#{second_int} is greater than or equal to 20."
else
  puts "#{second_int} is less than 20."
end

print "\nEnter the third number: "
third_int = gets.chomp.to_i

if third_int >= 20
  puts "#{third_int} is greater than or equal to 20."
else
  puts "#{third_int} is less than 20."
end
