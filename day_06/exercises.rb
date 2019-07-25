# Ada Jump Start Live - Day 6 Exercise

puts "Welcome to Hash Fun"
puts "\nI will be asking you for the names, ages, and favorite colors of your closest friends."
print "How many close friends do you have? "
number_of_friends = gets.chomp.to_i

friends = []

number_of_friends.times do |i|
  puts "FRIEND #{i + 1}"

  print "  name: "
  name = gets.chomp.capitalize

  print "  age: "
  age = gets.chomp.to_i

  print "  favorite_color: "
  favorite_color = gets.chomp.downcase

  friends.push({name: name, age: age, favorite_color: favorite_color})
end

kids = []
favorite_colors = []

friends.each do |friend|
  if friend[:age] < 18
    kids.push(friend[:name])
  end

  if !favorite_colors.include?(friend[:favorite_color])
    favorite_colors.push(friend[:favorite_color])
  end
end

puts "You have #{kids.length} close friends under 18: #{kids.join(", ")}."
puts "Your friends have #{favorite_colors.length} unique favorite colors: #{favorite_colors.join(", ")}."
