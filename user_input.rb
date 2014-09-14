require 'csv'
@students = []

def interactive_menu
		loop do	
		# 1. print the menu ad ask the user what to do
		print_menu
		# 2. read the input and save it into a variable & 3. do what the user has asked
		process(STDIN.gets.chomp)
	end
end

def print_menu
	puts "Options available:"
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
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
			save_student_csv
		when "4"
			load_students
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
	name = STDIN.gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		new_student(name)
		student_count
		puts "Next student please? If finished just hit return"
		name = STDIN.gets.chomp
	end
	# return the array of students
	@students
end

def new_student(name, cohort = :september)
	puts "What cohort are they on?"
	cohort = STDIN.gets.chomp
		if cohort.length < 1
			cohort = :september
		else 
			cohort = cohort.to_sym
		end
	puts "What is their GitHub username?"
	git = STDIN.gets.chomp
	add_students_to_array(name, cohort, git)
end


def student_count
	if @students.length == 1
			puts "Now we have #{@students.length} student"
	else
			puts "Now we have #{@students.length} students"
	end
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

def save_student_csv 
	CSV.open("student_list.csv", "wb") do |csv|
	@students.each { |student| 
		csv << [student[:name], student[:cohort], student[:git]]
	}
	end
	file.close
	puts "List saved"
end

def add_students_to_array(name,cohort, git)
	@students << {:name => name, :cohort => cohort.to_sym, :git => git}
end

def load_students (filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each { |line| 
	name, cohort, git = line.chomp.split(',')
		add_students_to_array(name, cohort, git)
	}
	file.close
	puts "List loaded"
end

def try_load_students
	filename = ARGV.first
	return if filename.nil? 
	if File.exists?(filename)
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else
		puts "Sorry, #{filename} doesn't exisit"
		exit
	end
end

try_load_students
interactive_menu

