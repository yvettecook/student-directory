@students = [
  {:name => "Nicole Pell", :cohort => :september, :git => "NicolePell"},
  {:name => "Bernard Mordan", :cohort => :september, :git => "bmordan"},
  {:name => "Elena Garrone", :cohort => :september, :git => "elenagarrone"},
  {:name => "Yvette Cook", :cohort => :october, :git => "yvettecook"},
  {:name => "Stephen Giles", :cohort => :october, :git => "HatStephen"}, 
  {:name => "Ana Nogal", :cohort => :october, :git => "ananogal"},
  {:name => "Tim Scully", :cohort => :november, :git => "Scully87"}
]

def interactive_menu
		loop do
		# 1. print the menu ad ask the user what to do
		print_menu
		# 2. read the input and save it into a variable & 3. do what the user has asked
		process(gets.chomp)
	end
end

def print_menu
	puts "Options available:"
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save students"
	puts "9. Exit"
end

def show_students
	if @students.length > 0
		print_header
		print_sorted_cohort
		print_footer
	else
		puts "No students, please input students (Option 1)"
	end
end

def process(selection)
	case selection
		when "1"
			students = input_students
		when "2"
			show_students
		when "3"
			save_students
		when "9"
			exit
		else
			puts "I don't know what you meant, try again"
	end
end


def input_students
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
		@students << {:name => name, :cohort => cohort, :git => git}

		if @students.length == 1
			puts "Now we have #{@students.length} student"
		else
			puts "Now we have #{@students.length} students"
		end

		# get another name from the user
		puts "Next student please? If finished just hit return"
		name = gets.chomp
	end
	# return the array of students
	@students
end

def print_header
	print "The students of my cohort of Makers Academy\n"
	print "-------------\n"
end


def list_cohorts
	list_cohort = []

	@students.map { |student| list_cohort << student[:cohort] }

	return list_cohort.uniq!
end


def print_sorted_cohort

	cohorts = list_cohorts

		cohorts.each { |month|
		puts "#{month.upcase} COHORT:"

		@students.each { |student| 
			if student[:cohort] == month
				puts "#{student[:name]}, Git: #{student[:git]}\n"
			end
		}
		puts "------------"
	}
end


def print_footer
	print "Overall, we have #{@students.length} great students\n"
	print "------------\n"
end

def save_students
	# open the file for writing
	file = File.open("students.csv", "w")
	# iterate over the array of students
	@students.each { |student| 
		student_data = [student[:name], student[:cohort], student[:git]]
		csv_line = student_data.join(",")
		file.puts csv_line
	}
	file.close
end


interactive_menu

