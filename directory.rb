student_count =23

# putting in an array
students = [
	"Nicole Pell",
	"Bernard Mordan",
	"Elena Garrone",
	"Yvette Cook",
	"Stephen Giles",
	"Ana Nogal",
	"Tim Scully",
	"Ella Fay",
	"Fadie H",
	"Dan Cutler",
	"Camilla van Klinken",
	"James Carter",
	"Andrew Hercules",
	"Karin Nielsen",
	"Andrew Snead",
	"Rachel Nolan",
	"Anna Schechter",
	"Alex Fakhri",
	"Denise Yu",
	"Andrew Harrison",
	"Sandrine",
	"Craig H",
	"Vic",
	"Pablo",
]

# printing the list
puts "The students of my cohort of Makers Academy"
puts "-------------"
students.each { |name| puts name }

puts "-------------"
#finally, we print the total
puts "Overall, we have #{student_count} great students"
