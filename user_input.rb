

def input_students

	students = [
	{:name => "Nicole Pell", :cohort => :september, :git => "NicolePell"},
	{:name => "Bernard Mordan", :cohort => :september, :git => "bmordan"},
	{:name => "Elena Garrone", :cohort => :september, :git => "elenagarrone"},
	{:name => "Yvette Cook", :cohort => :october, :git => "yvettecook"},
	{:name => "Stephen Giles", :cohort => :october, :git => "HatStephen"}, 
	{:name => "Ana Nogal", :cohort => :october, :git => "ananogal"},
	{:name => "Tim Scully", :cohort => :november, :git => "Scully87"}
]

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
				cohort.to_sym
			end
		puts "What is their GitHub username?"
		git = gets.chomp
		students << {:name => name, :cohort => cohort, :git => git}
		puts "Now we have #{students.length} students"
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

def list_cohorts(students)

	list_cohort = []

	students.map { |student| list_cohort << student[:cohort] }

	puts list_cohort.uniq

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
#print_header
#print_out_while(students)
#print_footer(students)
list_cohorts(students)