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
		puts "What is their GitHub username?"
		git = gets.chomp
		students << {:name => name, :cohort => :september, :git => git}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	print "The students of my cohort of Makers Academy\n"
	print "-------------\n"
end

def print_out(students)
	students.each_with_index { |student, index| print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort) Git: #{student[:git]}\n" }
end

def print_footer(students)
	print "-------------\n"
	print "Overall, we have #{students.length} great students\n"
end

def print_a(students)
	students.each { |student| 
		if student[:name].start_with?('A')
			puts "#{student[:name]}"
		end	
	}
end

def print_less_than_12(students)
	students.each { |student| 
		if student[:name].length < 12
			puts "#{student[:name]}"
		end
	}
end

students = input_students
print_header
print_out(students)
print_footer(students)