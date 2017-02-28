# let's put all the students into an array

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort). Hobbies: #{student[:hobbies]}. Born: #{student[:country_of_birth]}."
  end
end

def footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_statements
  puts "Provide some information about students. To finish, hit enter twice."
  # create an empty array
  students = []
  # while the name is not empty, repeat this code
  # get the first name
  puts "Please enter the name of another student"
  name = $stdin.gets.chomp
  while !name.empty? do
    # get hobbies
    puts "Please enter this student's hobbies"
    hobbies = $stdin.gets.chomp
    # get country of birth
    puts "Please enter this student's country of birth"
    country_of_birth = $stdin.gets.chomp
    # add the student hash to the array
    students << {name: name, cohort: :november, hobbies: hobbies, country_of_birth: country_of_birth}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the name of a student (or press enter twice to finish)"
    name = $stdin.gets.chomp
  end
  # returns the array of students
  students
end

students = input_statements
print_header
print(students)
footer(students)
