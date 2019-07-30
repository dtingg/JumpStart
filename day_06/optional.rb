# Ada Jump Start Live - Day 6 Optional Assessment
# Allow two users to play a game of Nim together

# Welcome users to the program
puts "Welcome to Nim!"
puts "\nThere will be several piles of stones. On your turn, you must choose a pile."
puts "Select how many stones you want to remove (any number from one to all)."
puts "The goal is to avoid taking the last stone in the last pile."

# Keep track of players
players = []

# Get player names
2.times do |i|
  print "\nPlayer #{i + 1} name: "
  name = gets.chomp.capitalize

  # Make sure name isn't an empty string and name isn't the same as another player
  until name != "" && !players.include?(name)
    if name == ""
      puts "Name cannot be blank."
    else
      puts "Name cannot be the same as another player."
    end  

    print "Please enter a valid name: "
    name = gets.chomp.capitalize
  end

  players.push(name)
end

# Set difficulty level
print "\nEnter difficulty level. Easy (2 piles), medium (3 piles), hard (7 piles): "

difficulty = gets.chomp.downcase

# Validate input for difficulty level
until difficulty == "easy" || difficulty == "medium" || difficulty == "hard"
  print "Please choose easy, medium, or hard: "
  difficulty = gets.chomp.downcase
end

# Randomly select who will go first
counter = rand(2)

# Keep track of piles
letters = "ABCDEFG"
piles = {}

# Figure out how many piles to make
number_of_piles = 0

if difficulty == "easy"
  number_of_piles = 2
elsif difficulty == "medium"
  number_of_piles = 3
else
  number_of_piles = 7
end

# Randomly fill piles with 1 - 9 stones
number_of_piles.times do |i|
  letter = letters[i]
  piles[letter.to_sym] = rand(1..9)
end

# Function to check if game is over
# Returns false if any piles still have a stone
def game_over(piles)
  piles.each do |letter, amount|
    if amount != 0
      return false
    end
  end
  return true
end

# Keep looping until game is over
while true
  puts "\nPILES"
  
  # Print the pile letters and number of stones in each
  piles.each do |letter, number|
    print "#{letter}: #{number}   "
  end

  puts "\n\n"

  # If counter is even, player 1 goes.  If counter is odd, player 2 goes.
  if counter % 2 == 0
    current_player = players[0]
  else
    current_player = players[1]
  end

  print "#{current_player}, chose a pile: "
  selected_pile = gets.chomp.upcase.to_sym

  # Make sure pile letter is valid and pile is not empty
  until piles.keys.include?(selected_pile) && piles[selected_pile] != 0
    if !piles.keys.include?(selected_pile)
      puts "There is no pile #{selected_pile}."
    elsif piles[selected_pile] == 0
      puts "There are no stones in pile #{selected_pile}!"
    end

    print "Please choose a valid pile: "
    selected_pile = gets.chomp.upcase.to_sym
  end

  # Make sure the pile has enough stones to remove
  print "#{current_player}, how many stones would you like to remove from pile #{selected_pile.to_s}? "
  stones = gets.chomp.to_i

  # Make sure stones isn't negative and there are enough stones in the pile
  while stones < 1 || stones > piles[selected_pile]
    if stones < 1
      puts "You must remove at least 1 stone."
    else
      puts "There are not enough stones in that pile."
    end
    
    print "How many stones would you like to remove? "
    current_stones = piles[selected_pile]

    if current_stones == 1
      print "(1) "
    else
      print "(1 - #{current_stones}) "
    end    
    
    stones = gets.chomp.to_i
  end

  # Update number of stones in that pile
  piles[selected_pile] -= stones

  # Increment counter to advance to next player.  If loop breaks, this also indicates the winner
  counter += 1

  # If stones in a particular pile is 0, check to see if game is over
  if piles[selected_pile] == 0
    if game_over(piles)
      break
    end
  end
end

# Print the winner
if counter % 2 == 0
  print "\n#{players[0]} "
else
  print "\n#{players[1]} "
end

puts "is the winner of this game!"
