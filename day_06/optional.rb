# Ada Jump Start Live - Day 6 Optional Assessment
# Allow two users to play a game of Nim together

# Check if player name is unique
def unique_name(name, players)
  players.each do |player|
    if player[:name] == name
      return false
    end
  end
  return true
end

# Function to check if game is over
# Returns false if any pile still has a stone
def game_over(piles)
  piles.each do |letter, amount|
    if amount != 0
      return false
    end
  end
  return true
end

# Prints ascii characters for stones
def print_stones(number)
  unicode_nums = ["\u278a", "\u278b", "\u278c", "\u278d", "\u278e", "\u278f", "\u2790", "\u2791", "\u2792", "\u2793"]

  number.times do |i|
    print "#{unicode_nums[i]} "
  end
end

# Get current player scores
def get_scores(players)
  scores = []
  
  players.each do |player|
    scores.push("#{player[:name]} #{player[:score]}")
  end
  return scores
end

# Welcome users to the program
puts "Welcome to Nim!"
puts "\nThere will be several piles of stones. On your turn, you must choose a pile."
puts "Select how many stones you want to remove (any number from one to all)."
puts "The goal is to avoid taking the last stone in the last pile."
puts "\n"

# Keep track of players
players = []

# Get player names
2.times do |i|
  print "Player #{i + 1} name: "
  name = gets.chomp.capitalize

  # Make sure name isn't an empty string and name isn't the same as another player
  until name != "" && unique_name(name, players)
    if name == ""
      puts "Name cannot be blank."
    else
      puts "Name cannot be the same as another player."
    end  

    print "Please enter a valid name: "
    name = gets.chomp.capitalize
  end

  players.push({name: name, score: 0})
end

# Flag to control play again
play_again = true

while play_again
  # Set difficulty level
  print "\nEnter difficulty level. Easy (2 piles), medium (3 piles), hard (7 piles): "
  difficulty = gets.chomp.downcase

  # Validate input for difficulty level
  until difficulty == "easy" || difficulty == "medium" || difficulty == "hard"
    print "Please choose easy, medium, or hard: "
    difficulty = gets.chomp.downcase
  end

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

  # Randomly select who will go first
  counter = rand(2)

  # Keep track of each player's moves for this game
  moves = [[], []]

  # Keep looping until game is over
  active_game = true
  
  while active_game
    puts "\nPILES"

    # Print the pile letters and amount of stones in each
    piles.each do |letter, amount|
      print "#{letter}: "
      print_stones(amount)
      puts "\n"
    end

    puts "\n"

    # If counter is even, player 1 goes. If counter is odd, player 2 goes.
    if counter % 2 == 0
      current_player = players[0][:name]
    else
      current_player = players[1][:name]
    end

    # Ask current player to choose a pile
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

    # Make sure there is at least 1 stone and that there are enough stones in the pile
    while stones < 1 || stones > piles[selected_pile]
      if stones < 1
        puts "You must remove at least 1 stone."
      else
        puts "There are not enough stones in that pile."
      end

      print "How many stones would you like to remove? "
      current_stones = piles[selected_pile]

      # This lets the user know what their options are
      if current_stones == 1
        print "(1) "
      else
        print "(1 - #{current_stones}) "
      end    
      
      stones = gets.chomp.to_i
    end

    # Update number of stones in that pile
    piles[selected_pile] -= stones

    # Save move
    move = "#{selected_pile}-#{stones}"

    if counter % 2 == 0
      moves[0].push(move)
    else
      moves[1].push(move)
    end

    # Increment counter to advance to next player.  If loop breaks, this also indicates the winner
    counter += 1

    # If stones in a particular pile is 0, check to see if game is over
    if piles[selected_pile] == 0
      if game_over(piles)
        active_game = false
      end
    end
  end

  # Print the winner and increment their score
  if counter % 2 == 0
    print "\n#{players[0][:name]} "
    players[0][:score] += 1
  else
    print "\n#{players[1][:name]} "
    players[1][:score] += 1
  end

  puts "is the winner of this game!"

  # Print each player's moves
  puts "#{players[0][:name]}'s moves: #{moves[0].join(", ")}"
  puts "#{players[1][:name]}'s moves: #{moves[1].join(", ")}"

  # Print current scores
  print "\nThe current score is: #{get_scores(players).join(", ")}"

  # Ask user if they want to play again
  answer = ""

  while answer != "Y" && answer != "N"
    print "\nDo you want to play again? Y or N "
    answer = gets.chomp.upcase
  end

  if answer == "N"
    play_again = false
  end
end

# Print final scores
print "\nThe final score is: #{get_scores(players).join(", ")}"

result = players[0][:score] <=> players[1][:score]

case result
when -1
  puts "\nThe overall winner is #{players[1][:name]}!"
when 0
  puts "\nIt's a tie!!"
when 1
  puts "\nThe overall winner is #{players[0][:name]}!"
end
