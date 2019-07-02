# Ada Jump Start - Lesson 11 Election Time
# Create a program that tracks election votes and determines the winner(s).

# Welcome the user to your program
puts "Welcome to Dianna Tingg's Election Voting Program!"

# Store the election candidates
candidate_hash = { Charlie: 0, Linus: 0, Lucy: 0, Snoopy: 0 }

# Print the election candidates
puts "\nThe election candidates are: #{candidate_hash.keys.join(", ")}."

# Poll people for their election vote until someone types Q
puts "Please choose a candidate, enter a write-in name, or type Q to exit."
puts "\n"

counter = 1

loop do
  print "Vote #{counter}: "
  vote = gets.chomp.capitalize.to_sym

  # Q means break loop
  if vote == :Q
    break

  # If candidate is in hash, add one to vote count
  elsif candidate_hash.key?(vote)
    candidate_hash[vote] += 1

  # Otherwise it is a write-in.  Add to hash and set votes to 1
  else
    candidate_hash[vote] = 1
  end

  # Increment vote counter
  counter += 1
end

# Print the total votes cast and the winner of the election
puts "\nELECTION RESULTS"

candidate_hash.each do |name, votes|
  print "#{name} - #{votes} "

  # If they only have 1, say vote.  Otherwise say votes.
  if votes == 1
    puts "vote"
  else
    puts "votes"
  end
end

# Determine the winner - find the max number of votes
max_votes = candidate_hash.values.max

# Store all of the winners
winners_list = []

# If candidate has the same number as max votes, add to winner's list
candidate_hash.each do |name, votes|
  winners_list.push(name.to_s) if votes == max_votes
end

# Print the winner(s)
if winners_list.length == 1
  print "\nThe winner is: " + winners_list[0]
else
  print "\nIt's a tie!  The winnners are: #{winners_list.join(", ")}"
end
