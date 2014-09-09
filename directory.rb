# putting in an array
students = [
	{:name => "Nicole Pell", :cohort => :september},
	{:name => "Bernard Mordan", :cohort => :september},
	{:name => "Elena Garrone", :cohort => :september},
	{:name => "Yvette Cook", :cohort => :september},
	{:name => "Stephen Giles", :cohort => :september},
	{:name => "Ana Nogal", :cohort => :september},
	{:name => "Tim Scully", :cohort => :september},
	{:name => "Ella Fay", :cohort => :september},
	{:name => "Fadie H", :cohort => :september},
	{:name => "Dan Cutler", :cohort => :september},
	{:name => "Camilla van Klinken", :cohort => :september},
	{:name => "James Carter", :cohort => :september},
	{:name => "Andrew Hercules", :cohort => :september},
	{:name => "Karin Nielsen", :cohort => :september}, 
	{:name => "Andrew Snead", :cohort => :september},
	{:name => "Rachel Nolan", :cohort => :september},
	{:name => "Anna Schechter", :cohort => :september},
	{:name => "Alex Fakhri", :cohort => :september},
	{:name => "Denise Yu", :cohort => :september},
	{:name => "Andrew Harrison", :cohort => :september},
	{:name => "Sandrine", :cohort => :september},
	{:name => "Craig H", :cohort => :september},
	{:name => "Vic", :cohort => :september},
	{:name => "Pablo", :cohort => :september}
]

def print_header
	print "The students of my cohort of Makers Academy\n"
	print "-------------\n"
end

def print_out(students)
	students.each_with_index { |student, index| print "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)\n" }
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

#print_header
#print_out(students)
#print_footer(students)
#print_a(students)
print_less_than_12(students)



