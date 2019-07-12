# Ada Jump Start Live - Day 5 Arrays

# 1. Create an array which will store the square of each value between 2 and 5, inclusive.
squared_nums = []

(2..5).each do |i|
    squared_nums.push(i * i)
end

puts "Squares: #{squared_nums}"

# 2. Given an array that contains three people, Ada Lovelace, Annie Easley, and Margaret Hamilton 
people = ["Ada Lovelace", "Annie Easley", "Margaret Hamilton"]

# Add one new person of your choice
people.push("Grace Hopper")

# Output Annie Easley using the array
puts people[1]

# Replace Ada Lovelace with Megan Smith
people[0] = "Megan Smith"

puts "#{people}"

# 3. On paper, create an array which stores the names of people that inspire you. 
# Then write down two different ways you can access the second-to-last name in your array?
people = ["Albert Einstein", "Elon Musk", "Jimmy Fallon"]

# Two ways to access the second to last name in the array
puts "#{people}"
puts people[-2]
puts people[1]

# 4. On paper, create an array which stores the numbers 1 – 15. 
my_array = []

(1..15).each do |num|
    my_array.push(num)
end

puts "#{my_array}"

# Two ways of accessing the middle number
middle_num = my_array[my_array.length / 2]
puts middle_num

puts my_array[7]

# 5. On paper, write code that will create an array named powers_of_2, and stores the first 10 powers of 2
powers_of_2 = Array.new(10) { |i| 2 ** i }

puts "#{powers_of_2}"
