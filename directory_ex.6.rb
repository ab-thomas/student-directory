def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end


def print_student_beginning_with_a(students)
  students = students.select {|student| student[:name].chars.length <= 12}
  students_with_a = students.select {|student| student[:name].chars.first.upcase == "A" }

  i = 0
  while i < students.length
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort from #{students[i][:country]} )"
    i += 1
  end
end

 
def print_footer(names)    
  puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the name of the students"
  
	puts "To finish, just hit return twice"

	# create and empty repository
	students = []
	# get the first name
	name = gets.chomp
  puts "Please enter the cohort"
  cohort = gets.chomp
  puts "Please enter the country"
  country = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => cohort, :country => country}
		puts "Now we have #{students.length} students"
		# get another name from the user
      puts "Please enter the name"
    name = gets.chomp
      puts "Please enter the cohort"
    cohort = gets.chomp
      puts "Please enter the country"
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
