# let's put all the students into an array
students = [
	"Berta", 
	"Megan"
	"Roland"
	"James"
	"Abraham"
	"Roy"
	"Jorja"
	"Colin"
	"Ayaz"
	"Kalle"
	"Andrey"
	"Biwek"
	"Mihai-Liviu"
	"Makis"
	"Nabin"
	"Peter"
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(names)
	names.each do |name|
	put name
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until  we call the methods
print_header
print(students)
print_footer(students)

