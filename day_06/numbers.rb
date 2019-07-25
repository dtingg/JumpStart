# Ada Jump Start - Day 6 Exercise

# Create an array of randomly generated numbers (1 to 100), 
# then print the values in the array, along with the current index, 
# and print the first and last values

numbers = []

while numbers.length != 10
  number = rand(1..100)

  if !numbers.include?(number)
    numbers.push(number)
  end
end

numbers.each_with_index do |number, index|
  puts "numbers[#{index}] = #{number}"
end

puts "\nMy first number was #{numbers.first}."
puts "My last number was #{numbers.last}."

puts "\nThe original array was: #{numbers}"
