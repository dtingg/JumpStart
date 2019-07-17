# Ada Jump Start - Lesson 13 Student Account Generator Continued
# By Dianna Tingg

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Store all student data in one array
student_data = []

# Ask user if they have a file with student names
print "Please enter filename to upload student names or press Enter to type them manually: "
filename = gets.chomp

# If there is a filename
if filename != ""
  begin
    File.open(filename).each do |line|
      # Check for empty lines
      if line != "\n"
        student_data.push({name: line.chomp.upcase}) 
      end
    end
  rescue
    puts "Failed to open file: #{filename}"

    # Keep asking for a valid filename unless they want to quit
    print "Enter filename or press Q to exit: "
    filename = gets.chomp

    if filename == "Q" || filename == "q"
      exit
    end

    retry
  end

# Or get student names from user input
else until student_data.size == 5
  print "Please enter the student's first and last name: "
  student = gets.chomp.upcase

  if student != ""
    student_data.push({name: student})
  else
    puts "Invalid name. Please try again."
  end
end
end

## TODO: Utilize a single loop to drive the hash population (you may have nested loops inside this loop for other functionality)

# Generate random student id numbers from 111111 to 999999
student_data.each do |student| 
  random_id = rand(111111..999999)
  student[:id] = random_id

## TODO
#   # Make sure id number is not a duplicate
#   if !ids.include?(random_num)
#     ids.push(random_num)
#   end
end

# Returns first initals and last name
def get_username(student_name)
  name_parts = student_name.split
  first_initials = ""
  i = 0

  while i != name_parts.size - 1
    first_initials << name_parts[i][0]
    i += 1
  end

  username = first_initials << name_parts[-1]
end

# Create email address: first initials + last name + last 3 of id number + @adadevelopersacademy.org
student_data.each do |student|
  username = get_username(student[:name])
  id = student[:id].to_s.slice(-3..-1)
 
  email = username << id << "@adadevelopersacademy.org"

  student[:email] = email
end

puts "\n"

# Print all student names, id numbers, and email addresses using the hash
student_data.each do |student| 
  puts "Student: #{student[:name]}, ID: #{student[:id]}, E-mail: #{student[:email]}"
end
