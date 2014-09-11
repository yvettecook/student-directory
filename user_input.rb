def interactive_menu
	students = []
	loop do
		# 1. print the menu ad ask the user what to do
		puts "Options available:"
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit"
		# 2. read the input and save it into a variable
		selection = gets.chomp
		# 3. do what the user has asked
		case selection
		when "1"
			students = input_students
		when "2"
			if students.length > 0
				print_header
				print_sorted_cohort(students)
				print_footer(students)
			else
				puts "No students, please input students (Option 1)"
			end
		when "9"
			exit
		else
			puts "I don't know what you meant, try again"
		end
	end
end

def input_students
	students = []
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student has to the array
		puts "What cohort are they on?"
		cohort = gets.chomp
			if cohort.length < 1
				cohort = :september
			else 
				cohort = cohort.to_sym
			end
		puts "What is their GitHub username?"
		git = gets.chomp
		students << {:name => name, :cohort => cohort, :git => git}

		if students.length == 1
			puts "Now we have #{students.length} student"
		else
			puts "Now we have #{students.length} students"
		end

		# get another name from the user
		puts "Next student please? If finished just hit return"
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	print "The students of my cohort of Makers Academy\n"
	print "-------------\n"
end


def list_cohorts(students)
	list_cohort = []

	students.map { |student| list_cohort << student[:cohort] }

	return list_cohort.uniq!
end


def print_out(students)
	students.each_with_index { |student, index| print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort) Git: #{student[:git]}\n" }
end


def print_out_while(students)

	index = 1

	for student in students
		print "#{index}. #{student[:name]} (#{student[:cohort]} cohort) Git: #{student[:git]}\n"
		index += 1
	end
end


def print_sorted_cohort(students)

	cohorts = list_cohorts(students)

		cohorts.each { |month|
		puts "#{month.upcase} COHORT:"

		students.each { |student| 
			if student[:cohort] == month
				puts "#{student[:name]}, Git: #{student[:git]}\n"
			end
		}
		puts "------------"
	}
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


interactive_menu

