# let's put all the students into an array
@students = []
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def footer
  puts "Overall, we have #{@students.count} great students"
end

def input_statements
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = $stdin.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = $stdin.gets.chomp
  end
  # returns the array of students
  @students
end

def interactive_menu
loop do
  print_menu
  process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit" # 9 because we will be adding more items
end

def show_students
  print_header
  print_student_list
  footer
end

def process(selection)
  case selection
  when "1"
    students = input_statements
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit
  else
    "I don't know what you meant, try again"
  end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

interactive_menu
