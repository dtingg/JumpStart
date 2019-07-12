# Ada Jump Start Live - Day 2 In-Class Exercise

# Write a conditional statement that prints if x is greater than 0 and y is less than 0
x = 2
y = -2
z = 4

if x > 0 && y < 0
  puts "#{x} is greater than 0 and #{y} is less than 0."
end

# Find a different way to write the conditional statement by using negation
x = 2
y = -2
z = 4

if ! (x <= 0 || y >= 0)
  puts "#{x} is greater than 0 and #{y} is less than 0."
end
