def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student has to the array
		students << {:name => name, :cohort => :september}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	puts "The students of my cohort of Makers Academy"
	puts "-------------"
end

def print(students)
	students.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end

def print_footer(students)
	puts "-------------"
	puts "Overall, we have #{students.length} great students"
end

students = input_students
print_header
print(students)
print_footer(students)