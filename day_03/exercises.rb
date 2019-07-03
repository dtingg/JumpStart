# Ada Jump Start Live - Day 3 Exercises

# Exercise 1: Number guessing game
puts "Let's play a game!"

# Generate a random number between 0 and 1000
my_number = rand(0...1000)

# Create a variable to hold the user's guess
user_number = -1

# Use a counter to keep track of number of guesses
counter = 0

# Allow user to keep trying until they guess the answer
until user_number == my_number
  print "Guess my number (0-999): "
  user_number = gets.chomp.to_i

  counter += 1

  # Give them clues by saying higher or lower
  if user_number > my_number
    puts "LOWER"
  elsif user_number < my_number
    puts "HIGHER"
  end
end

# When they guess it correctly, print a winning message and total number of guesses
print "CORRECT! My number is #{my_number}. It only took you #{counter} "
if counter == 1
  puts "guess."
else
  puts "guesses."
end

# Add line break
puts "\n"

# Exercise 2: Duck Duck Goose game
puts "Let's play Duck Duck Goose!"

# Let player choose a number to Goose
print "Which player do you want to Goose? "

goose = gets.chomp.to_i

counter = 1

# Add a line break
print "\n"

# Say duck for each player before the goose.
until counter == goose
  puts "Player #{counter}: Duck"
  counter += 1
end

# Say goose for the chosen player
puts "Player #{counter}: Goose"

# Add a line break
puts "\n"

# Exercise 3: Flower petals game
puts "Let's play a game."

# Let user choose a number of petals
print "Choose a number of flower petals: "
petals = gets.chomp.to_i

counter = 0

# Add a line break
puts "\n"

# Pluck each petal and alternate "They love me" and "They love me not"
until counter == petals
  counter += 1

  print "Plucking petal ##{counter}: "

  # If petal number is odd
  if counter % 2 != 0
    puts "They love me!"

  # If petal number is even
  else
    puts "They love me not!"
  end
end

# Add line break
puts "\n"

# Exercise 4: Verify user input
puts "Hello! We are going to total some numbers!"

total = 0

while true
  print "\nWhich number do you want to add? (Enter a negative number to quit): "
  input = gets.chomp.to_i

  print "Please re-enter the same number to confirm: "
  confirm_input = gets.chomp.to_i

  if input == confirm_input
    # If the numbers match and they are negative, exit loop
    if input < 0
      break

    # If the numbers match and are positive, add them to the total
    else
      total += input
    end
  end
end

puts "\nResult: #{total}"
