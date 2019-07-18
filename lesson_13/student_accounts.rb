# Ada Jump Start - Lesson 13 Student Account Generator Continued
# By Dianna Tingg

# Introduce the program
puts "Welcome to the Student Account Generator\n"
puts "\n"

# Store all student data in one array of hashes
student_data = []

# Function takes a full name and returns the first initial(s) and last name
def get_username(student_name)
  name_parts = student_name.split
  first_initials = ""
  i = 0

  while i != name_parts.size - 1
    first_initials << name_parts[i][0]
    i += 1
  end

  username = first_initials << name_parts[-1]
  username.downcase
end

# Create an array with all possible id numbers and shuffle it
id_list = Array(111111..999999).shuffle

# Function creates an email address
def create_email(student_name, student_id)
  username = get_username(student_name)

  # Only use last three digits of student id
  short_id = student_id.to_s.slice(-3..-1)

  username << short_id << "@adadevelopersacademy.org"
end

# Create a student record
def create_record(student_name, id_list)
  name = student_name
  id = id_list.pop
  email = create_email(name, id)

  { name: name, id: id, email: email }
end

# Ask user if they have a file with student names
print "Please enter filename to upload student names or press Enter to type them manually: "
filename = gets.chomp

# If there is a filename
if filename != ""
  begin
    File.open(filename).each do |line|
      # Check for empty lines
      if line != "\n"
        student_name = line.chomp
        student_data.push(create_record(student_name, id_list))
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
else
  until student_data.size == 5
    print "Please enter the student's first and last name: "
    student_name = gets.chomp

    if student_name != ""
      student_data.push(create_record(student_name, id_list))

    else
      puts "Invalid name. Please try again."
    end
  end
end

puts "\nSTUDENT ROSTER"

# Print all student names, id numbers, and email addresses using the hashes
student_data.each do |student|
  puts "Name: #{student[:name]}, ID: #{student[:id]}, E-mail: #{student[:email]}"
end
