# Ada Jump Start - Lesson 12 Student Account Generator

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Create three arrays
students = []
ids = []
emails = []

# Use a times loop to ask user for 5 student names (first and last)
# Store name in all uppercase letters
5.times do
  print "Please enter the student's first and last name: "
  students.push(gets.chomp.upcase)
end

# Use a times loop to generate random student id numbers from 111111 to 999999
5.times do
  while true
    random_num = rand(111111..999999)

    # Make sure id is not a duplicate
    if !ids.include?(random_num)
      ids.push(random_num)
      break
    end
  end
end

# Use a times loop to generate student email addresses
# first initial + last name + last 3 digits of student id + @adadevelopersacademy.org
def get_username(student_name)
  name_parts = student_name.split

  first_initials = ""
  i = 0

  while i != name_parts.length - 1
    first_initials += name_parts[i][0]
    i += 1
  end

  username = first_initials + name_parts[-1]
end

5.times do |i|
  email = get_username(students[i]) + ids[i].to_s.slice(-3..-1) + "@adadevelopersacademy.org"
  emails.push(email)
end

# Print all student names, id numbers, and email addresses in parallel
puts "\n"
5.times do |i|
  puts "Student: #{students[i]}, ID: #{ids[i]}, E-mail: #{emails[i]}"
end
