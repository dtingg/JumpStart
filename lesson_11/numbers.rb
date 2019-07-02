# Ada Jump Start - Lesson 11 Numbers

# Introduce the program
puts "Let's play a numbers game."

# Ask the user for the count of numbers
print "How many numbers would you like to enter? "

count = gets.chomp.to_i

# Version using a times loop
count.times do
  print "Enter a positive integer: "
  number = gets.chomp.to_i

  if number % 3 == 0
    puts "#{number} is divisible by 3."
  else
    puts "#{number} is not divisible by 3."
  end
end

# Version using a while loop
# counter = 0
#
# while counter != count
#   print "Enter a positive integer: "
#   number = gets.chomp.to_i
#
#   if number % 3 == 0
#     puts "#{number} is divisible by 3."
#   else
#     puts "#{number} is not divisible by 3."
#   end
#
#   counter += 1
# end
