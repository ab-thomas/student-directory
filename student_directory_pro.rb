def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end


def print_student_beginning_with_a(students)
  students = students.select {|student| student[:name].chars.length <= 12}
  students_with_a = students.select {|student| student[:name].chars.first.upcase == "A" }

  students_with_a.each_with_index do |student, index|
    puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end


def print_footer(names)    
  puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the name of the students"
	puts "To finish, just hit return twice"
	# create and empty repository
	@students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		@students << {:name => name, :cohort => :january}
		puts "Now we have #{@students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	@students
end

# 1.print the menu and ask the user what to do
def print_menu
		puts "1. Input the students"
		puts "2. Show the students"
    puts "3. Save the students"
    puts "4. Load the list from students.csv"
		puts "9. Exit"
	end

def show_students
			print_header
			print(@students)
			print_footer(@students)
		end

def interactive_menu
	@students = []
	loop do 
		print_menu
		# 2. read the input and save it into a variable
		selection = gets.chomp
		# 3.do what the user has asked
		case selection
		when "1"
			@students = input_students
		when "2"
			show_students
    when "3"
      save_students
    when "4"
      load_students
		when "9"
			exit # thi will casue the program to terminate
		else 
			puts
			"I don't know what you meant, try again"
		end
	end
end

def save_students
  #open the file for writing
  file = File.open("students.csv", "w")
  #iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  file.close
end


interactive_menu
# students = input_students
# print_header
# # print(students)
# print_footer(students)
# print_student_beginning_with_a(students) 


