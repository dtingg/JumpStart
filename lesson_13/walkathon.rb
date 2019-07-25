# Ada Jump Start - Lesson 13 Walk-a-thon

# Welcome the user
puts "Welcome to Dianna's Walk-A-Thon Tracker!"

# Get earning goal from user
print "\nPlease enter the earning goal for this event: $"
goal = gets.chomp.to_f

# Get the amount earned per lap (per person) from the user
print "Please enter the amount earned per lap (per person): $"
money_per_lap = gets.chomp.to_f

# Store walker info
walker_results = {}

# Get information for each walker
puts "\nPlease enter information for each walker or type Q when finished: "

loop do
  print "Walker name: "
  name = gets.chomp

  if name == "Q" || name == "q"
    break
  end

  print "Laps completed: "
  laps = gets.chomp.to_i
  walker_results[name.to_sym] = laps

  money_raised = laps * money_per_lap
  puts "  Raised $#{"%.2f" % money_raised}"
end

# Print results section
puts "\nRESULTS"

# Calculate who raised the most money
max_laps = walker_results.values.max
max_walkers = []

for name, laps in walker_results
  if laps == max_laps
    max_walkers.push(name)
  end
end

if max_walkers.size == 1
  puts "Highest earning walker: #{max_walkers[0]}"
else
  puts "Highest earning walkers: #{max_walkers.join(", ")}"
end

# Calculate total amount earned in the walk-a-thon
total_laps = walker_results.values.sum
total_raised = total_laps * money_per_lap
puts "Total amount raised: $#{"%.2f" % total_raised}"

# Calculate whether or not the earning goal was met
print "Goal Met? "

if goal == total_raised
  puts "Yes, you raised the exact amount of money needed for the goal."
elsif goal < total_raised
  puts "Yes! You beat the goal by $#{"%.2f" % (total_raised - goal)}."
else
  puts "No. The goal was missed by $#{"%.2f" % (goal - total_raised)}."
end
