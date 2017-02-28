# let's put all the students into an array

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.sort_by {|x| x[:cohort]}.each do |x|
        puts "Name: #{x[:name]} Cohort:#{x[:cohort]}"
      end
end

def footer(students)
    puts "Overall, we have #{students.count} great students"
end

def input_statements
  puts "Please enter the names of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  cohorts = [:january, :february, :march, :april, :may, :june, :july, :august, :september, :october, :november, :december]
  # get the first name
  puts "Please enter the name of the first student"
  name = $stdin.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "Please enter their cohort"
    cohort = $stdin.gets.chomp
    if cohort.empty?
      cohort = "November"
    elsif !cohorts.include? cohort.downcase.to_sym
      until cohorts.include? cohort.downcase.to_sym
      puts "Try again..."
      cohort = $stdin.gets.chomp
      end
    end
    # add the student hash to the array
    students << {name: name.split(" ").map {|x| x.capitalize}.join(" "), cohort: cohort.downcase.capitalize!}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Please enter the name of another student (or press enter to finish)"
    name = $stdin.gets.chomp
  end
  # returns the array of students
  students
end

students = input_statements

print_header
print(students)
footer(students)
