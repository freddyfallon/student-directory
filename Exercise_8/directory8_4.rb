# let's put all the students into an array

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  i = 0
  while i < students.count
    puts "#{i}. #{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

#def print(students)
#  i = 0
#  until i == students.count
#    puts "#{i}. #{students[i][:name]} #{students[i][:cohort]} cohort"
#    i += 1
#  end
#end

def footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_statements
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = $stdin.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = $stdin.gets.chomp
  end
  # returns the array of students
  students
end

students = input_statements
print_header
print(students)
footer(students)
