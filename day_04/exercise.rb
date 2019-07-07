# Ada Jump Start Live - Day 4 Exercise

# Password verification
# Program evaluates a proposed password and only accepts it if it meets all requirements

while true

# Ask the user for a new password
print "Enter your password: "
password = gets.chomp

# Check if password is at least 8 characters
if password.length < 8
  puts "Your password must be at least 8 characters."

# Check if password contains a number
elsif password.count("0-9") == 0
  puts "Your password must include at least one number."

# Check if password contains a capital letter
elsif password.count("A-Z") == 0
  puts "Your password must include at least one capital letter."

# Check if password contains a lowercase letter
elsif password.count("a-z") == 0
  puts "Your password must include at least one lowercase letter."

# Check if password contains a symbol
elsif ! (password.include?("@") || password.include?("%") || password.include?("\*") || password.include?("!"))
  puts "Your password must include one of these symbols (@, %, \*, !)."

# Ask the user to re-enter the new password to confirm
else
  print "Please re-enter your password to confirm: "
  confirm_password = gets.chomp

  if password == confirm_password
  puts "Congratulations.  Your new password is: #{password}"
  break
  end
end
end
