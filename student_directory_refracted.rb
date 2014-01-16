def user_input(name = gets.chomp)
	puts "Hello #{name}"

name = []

while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :january}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students

end


def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)    
  puts "Overall, we have #{names.length} great students"
end


puts "What is your name?"
puts "To finish, just hit return twice"


students = input_students
print_header
print(students)
print_footer(students)