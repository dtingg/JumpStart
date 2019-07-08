# Ada Jump Start - Lesson 12 Numbers

# Introduce the program
puts "Let's play a numbers game."

# Ask the user for a count of numbers
print "How many numbers would you like to enter? "
count = gets.chomp.to_i

# Save the user's numbers
numbers = []

# Loop over this "count" number of times
count.times do
  print "Enter a positive integer: "
  user_int = gets.chomp.to_i
  numbers.push(user_int)
end

# Go through each value in the array and compare to the last number entered
i = 0
last_num = numbers.last
puts "\nComparing to the last value entered, #{last_num}, here are some observations:"

while i < numbers.length
  print "The value at index #{i}, #{numbers[i]} is "

  if numbers[i] < last_num
    print "less than "
  elsif numbers[i] > last_num
    print "greater than "
  else
    print "equal to "
  end

  puts "the value at the last index, #{last_num}."
  
  i += 1

end

# Print the minimum value, the maximum value, and the average value
puts "\nThe minimum value in the array is #{numbers.min}."
puts "The maximum value in the array is #{numbers.max}."
puts "The average of all the values in the array is #{numbers.sum / numbers.length.to_f}."
