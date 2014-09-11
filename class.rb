class Person

	def initialize(name, cohort, git)
		@name = name
		@cohort = :september 
		@git = "no git username supplied"
	end

	def input_students
		puts "Please enter the names of the students"
		puts "To finish, just hit return twice"
		#create empty array"
		students = []
		name = gets.chomp
		while !name.empty? do
			puts "What cohort are they one?"
			cohort = gets.chomp
			cohort.to_sym
			puts "What is their GitHub username?"
			git = gets.chomp
			students << Person.new(name, cohort, git)
			puts "Now we have #{students.length} students"
			name = gets.chomp
		end
		students
	end

end





