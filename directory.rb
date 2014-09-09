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

def print_header
	puts "The students of my cohort of Makers Academy"
	puts "-------------"
end

def print(students)
	students.each { |name| puts name }
end

def print_footer(students)
	puts "-------------"
	puts "Overall, we have #{students.length} great students"
end

print_header
print(students)
print_footer(students)