# Ada Jump Start - Lesson 13 Numbers

# Create a hash
first_hash = Hash.new

# Add a :random_numbers key with an array of 5 random numbers (12 - 21 inclusive) as the value
random_nums = []

5.times do
  random_nums.push(rand(12..21))
end

first_hash[:random_numbers] = random_nums

# Add a :user_input key with an array of 5 user entered numbers (12 - 21 inclusive) as the value
user_nums = []

until user_nums.size == 5
  print "Please enter a number between 12 and 21 (both inclusive): "
  num = gets.chomp.to_i
  
  if num > 11 && num < 22
    user_nums.push(num)
  else
    puts "Error. Please try again."
  end
end

first_hash[:user_input] = user_nums

# Create a second hash
# Keys are numbers (randomly generated or user entered)
# Values hold number of times randomly generated, number of times entered by user
second_hash = Hash.new

# Add random nums and frequency to hash
random_nums.each do |num|
  number = num.to_s.to_sym

  if second_hash.key?(number)
    second_hash[number][:random] += 1
  else 
    second_hash[number] = {random: 1}
  end
end

# Add user nums and frequency to hash
user_nums.each do |num|
  number = num.to_s.to_sym

  if second_hash.key?(number)
    if second_hash[number].key?(:user)
      second_hash[number][:user] += 1
    else
      second_hash[number][:user] = 1
    end
  else
    second_hash[number] = {user: 1}
  end
end

# Ask user for three numbers to get information on
3.times do 
  print "\nWhich number do you want information about? "
  target_num = gets.chomp.to_i

  until target_num > 11 && target_num < 22
    print "Error.  Please enter a number between 12 and 22: "
    target_num = gets.chomp.to_i
  end

  puts "Using only the first hash: "  
  if first_hash[:random_numbers].include?(target_num)
    puts "The number, #{target_num} shows up #{first_hash[:random_numbers].count(target_num)} time(s) in the randomly generated numbers."
  else
    puts "The number, #{target_num} did not show up in the randomly generated numbers."
  end

  if first_hash[:user_input].include?(target_num)
    puts "The number, #{target_num} was provided #{first_hash[:user_input].count(target_num)} time(s) by the user."
  else
    puts "The number, #{target_num} was not provided by the user."
  end

  puts "Using only the second hash: "
  random_value = second_hash[target_num.to_s.to_sym][:random]

  if random_value
    puts "The number, #{target_num} shows up #{random_value} time(s) in the randomly generated numbers."
  else
    puts "The number, #{target_num} did not show up in the randomly generated numbers."
  end

  user_value = second_hash[target_num.to_s.to_sym][:user]

  if user_value
    puts "The number, #{target_num} was provided #{user_value} time(s) by the user."
  else
    puts "The number, #{target_num} was not provided by the user."
  end
end
