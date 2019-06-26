# Ada Jump Start - Lesson 10 Candy Machine

# Welcome the user
puts "Welcome to Dianna's Computer Candy Machine!"
puts "All candy provided is virtual."

# Ask the user how much money they have
print "\nHow much money do you have? $"
user_money = gets.chomp.to_f

# Make sure the money amount is valid (not negative, not a letter)
until user_money > 0
  print "Please enter a valid amount of money: $"
  user_money = gets.chomp.to_f
end

# Store a selection of candy and prices
# key is selection letter, value is price[0], item[1]
candy_hash = { A: [1.50, "Twix"], B: [2.00, "Snickers"], C: [3.50, "Red Vines"],
  D: [4.00, "Apple Rings"], E: [5.25, "Salt Water Taffy"] }

# Display all candy options and their costs
puts "\nThis is what we offer: "

candy_hash.each do |letter, item|
  puts "#{letter}  $#{'%.2f' % item[0]} #{item[1]}"
end

# Ask the user what they want
# Account for lowercase or uppercase letters
print "\nWhich option do you want? "
user_choice = gets.chomp.capitalize.to_sym

# Make sure selection is valid
until candy_hash.key?(user_choice)
  print "Please enter a valid candy selection: "
  user_choice = gets.chomp.capitalize.to_sym
end

# Decide if the user can afford the candy
item_price = candy_hash[user_choice][0]

# If they can't afford it, tell them
if user_money < item_price
  puts "Sorry, you don't have enough money for that item!"

# Otherwise calculate and display their change
else
  user_money -= item_price
  puts "Thank you! Please take your #{candy_hash[user_choice][1]} "\
  "and your $#{'%.2f' % user_money} change."
end
