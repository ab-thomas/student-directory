def print_header
  puts "The students of my cohort at Makers Academy".center(100)
  puts "-------------".center(100)
end


def print_student_beginning_with_a(students)
  students = students.select {|student| student[:name].chars.length <= 12}
  students_with_a = students.select {|student| student[:name].chars.first.upcase == "A" }

  i = 0
  while i < students.length
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort from #{students[i][:country]} )".center(100)
    i += 1
  end
end

 
def print_footer(names)    
  puts "Overall, we have #{names.length} great students".center(100)
end

def input_students
	puts "Please enter the name of the students".center(100)
  
	puts "To finish, just hit return twice".center(100)

	# create and empty repository
	students = []
	# get the first name
	name = gets.chomp
  puts "Please enter the cohort".center(100)
  cohort = gets.chomp
  puts "Please enter the country".center(100)
  country = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => cohort, :country => country}
		puts "Now we have #{students.length} students".center(100)
		# get another name from the user
      puts "Please enter the name".center(100)
    name = gets.chomp
      puts "Please enter the cohort".center(100)
    cohort = gets.chomp
      puts "Please enter the country".center(100)
    country = gets.chomp

	end
	# return the array of students
	students
end

students = input_students
print_header
# print(students)
print_footer(students)
print_student_beginning_with_a(students) 

