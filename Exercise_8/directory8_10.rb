# let's put all the students into an array

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def footer(students)
  if students.count == 1
    puts "Overall, we have #{students.count} great student"
    else
    puts "Overall, we have #{students.count} great students"
  end
end

def input_statements
  puts "Please enter the names of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  cohorts = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
  # get the first name
  puts "Please enter the name of the first student"
  name = $stdin.gets.insert(-1, "\n")
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter their cohort"
    cohort = $stdin.gets.delete("\n")
    if cohort.empty?
      cohort = "November"
    elsif !cohorts.include? cohort.downcase.to_sym
      until cohorts.include? cohort.downcase.to_sym
      puts "Try again..."
      cohort = $stdin.gets.delete("\n")
      end
    end
    # add the student hash to the array
    students << {name: name.split(" ").map {|x| x.capitalize}.join(" "), cohort: cohort.downcase.capitalize!}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the name of another student (or press enter to finish)"
    name = $stdin.gets.delete("\n")
  end
  # returns the array of students
  students
end

students = input_statements

print_header
print(students)
footer(students)
