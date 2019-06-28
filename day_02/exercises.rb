# Ada Jump Start Live - Day 2 Exercises
# Print each problem statement and the output from the conditional statement(s)

puts "1. Prompt for a number. If the number is greater than 70, print PASSING; \
otherwise, print NOT PASSING."

print "Please enter a number: "
number = gets.chomp.to_i

if number > 70
  puts "PASSING"
else
  puts "NOT PASSING"
end

puts "2. Prompt for a string. If the string is equal to green, print GO, \
otherwise, print STOP."

print "Please enter a string: "
string = gets.chomp

if string == "green"
  puts "GO"
else
  puts "STOP"
end

puts "3. Prompt for a number. If the number is even, print EVEN, otherwise, print ODD."

print "Please enter a number: "
number = gets.chomp.to_i

if number % 2 == 0
  puts "EVEN"
else
  puts "ODD"
end

puts "4. Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, \
otherwise, print NOT A MULTIPLE OF 5."

print "Please enter a number: "
number = gets.chomp.to_i

if number % 5 == 0
  puts "MULTIPLE OF 5"
else
  puts "NOT A MULTIPLE OF 5"
end

puts "5. Prompt for a number. If the number is less than 10, print ONE DIGIT. \
If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS."

print "Please enter a number: "
number = gets.chomp.to_i

if number < 10
  puts "ONE DIGIT"
elsif number >= 100
  puts "THREE DIGITS"
else
  puts "TWO DIGITS"
end

puts "6. Prompt for a jersey number. If that number is 12, 71, or 80, \
print That number is retired from the Seattle Seahawks!, otherwise do nothing."

print "Please enter a jersey number: "
jersey_number = gets.chomp.to_i

if jersey_number == 12 || jersey_number == 71 || jersey_number == 80
  puts "That number is retired from the Seattle Seahawks!"
end

puts "7. Prompt for a state. If the state is Washington, Oregon, or Idaho, print \
This state is in the PNW, otherwise print You should move to the PNW; it’s great here!"

print "Please enter a state: "
state = gets.chomp.capitalize

if state == "Washington" || state == "Oregon" || state == "Idaho"
  puts "This state is in the PNW"
else
  puts "You should move to the PNW; it's great here!"
end

puts "8. Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. \
Print out the number of ounces that drink includes (8, 12, 16, 20 respectively)."

drink_hash = { SHORT: 8, TALL: 12, GRANDE: 16, VENTI: 20 }

print "Please choose one of the following: SHORT, TALL, GRANDE, or VENTI: "

drink_size = gets.chomp.upcase.to_sym

until drink_hash.key?(drink_size)
  print "Please enter a valid size: "
  drink_size = gets.chomp.upcase.to_sym
end

puts drink_hash[drink_size]

puts "9. Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked \
beyond 40(e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15)."

print "Please enter rate of pay: "
pay_rate = gets.chomp.to_f

print "Please enter hours worked: "
hours_worked = gets.chomp.to_f

if hours_worked <=40
  puts "Gross pay: $#{'%.2f' % (hours_worked * pay_rate)}"
else
  regular_pay = 40 * pay_rate
  overtime_pay = (hours_worked - 40) * (pay_rate * 1.5)
  puts "Gross pay: $#{'%.2f' % (regular_pay + overtime_pay)}"
end

puts "10. Rewrite the solution to the previous problem adding this modification: do not process any employee \
if their hours worked is greater than 60, instead display the message Please see manager."

print "Please enter rate of pay: "
pay_rate = gets.chomp.to_f

print "Please enter hours worked: "
hours_worked = gets.chomp.to_f

if hours_worked > 60
  puts "Please see manager."
elsif hours_worked <=40
  puts "Gross pay: $#{'%.2f' % (hours_worked * pay_rate)}"
else
  regular_pay = 40 * pay_rate
  overtime_pay = (hours_worked - 40) * (pay_rate * 1.5)
  puts "Gross pay: $#{'%.2f' % (regular_pay + overtime_pay)}"
end
