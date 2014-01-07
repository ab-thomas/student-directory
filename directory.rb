# let's put all the students into an array
student = [
	{:name => "Abraham", :cohort => "January"},
	{:name => "Berta", :cohort => "January"},
	{:name => "Megan", :cohort => "January"},
	{:name => "James", :cohort => "January"},
	{:name => "Roy", :cohort => "January"},
	{:name => "Jorja", :cohort => "January"},
	{:name => "Colin", :cohort => "January"},
	{:name => "Ayaz", => :cohort "January"},
	{:name => "Kalle", :cohort => "January"},
	{:name => "Andrey", :cohort => "January"},
	{:name => "Biwek", :cohort => "January"},
	{:name => "Mihai-Liviu", :cohort => "January"},
	{:name => "Makis", :cohort => "January"},
	{:name => "Nabin", :cohort => "January"},
	{:name => "Peter", :cohort => "January"}
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until  we call the methods
print_header
print(students)
print_footer(students)

