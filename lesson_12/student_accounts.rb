# Ada Jump Start - Lesson 12 Student Account Generator
# By Dianna Tingg

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Store student names, ids, and emails
students = []
ids = []
emails = []

# Ask user if they have a file with student names
print "Please enter filename to upload student names or press Enter to type them manually: "
filename = gets.chomp

# If there is a filename
if filename != ""
  begin
    File.open(filename).each do |line|

      # Check for empty lines
      if line != "\n"
        students.push(line.chomp.upcase) 
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
else until students.size == 5
  print "Please enter the student's first and last name: "
  student = gets.chomp.upcase

  if student != ""
    students.push(student)
  else
    puts "Invalid name. Please try again."
  end
end
end

# Generate random student id numbers from 111111 to 999999
until ids.size == students.size
  random_num = rand(111111..999999)

  # Make sure id number is not a duplicate
  if !ids.include?(random_num)
    ids.push(random_num)
  end
end

# Returns first initals and last name
def get_username(student_name)
  name_parts = student_name.split
  first_initials = ""
  i = 0

  while i != name_parts.size - 1
    first_initials += name_parts[i][0]
    i += 1
  end

  username = first_initials + name_parts[-1]
end

# Create email address: first initials + last name + last 3 of id number + @adadevelopersacademy.org
(students.size).times do |i|
  email = get_username(students[i]) + ids[i].to_s.slice(-3..-1) + "@adadevelopersacademy.org"
  emails.push(email)
end

puts "\n"

# Print all student names, id numbers, and email addresses in parallel
(students.size).times do |i|
  puts "Student: #{students[i]}, ID: #{ids[i]}, E-mail: #{emails[i]}"
end
