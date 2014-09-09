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

print_header
print(students)
print_footer(students)