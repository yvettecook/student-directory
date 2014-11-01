Student Directory
=================

## Description

The student directory script allows you to manage the list of students enrolled on the course at Makers Academy

## Context

Done as part of the Makers Academy pre-course programme, to put learning into practice (and learn my cohort's names!)

## Tools

* Ruby
* Git
* Command line

## How to use

 ```shell
 ruby directory.rb
 ```
 
Choose from the command-line menu options:
 
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the list from students.csv
9. Exit
10. 


## Learning Outcomes

While loops:

	```
	while !name.empty? do
		puts "What cohort are they one?"
		cohort = gets.chomp
		cohort.to_sym
		puts "What is their GitHub username?"
		git = gets.chomp
		students = students << Person.new(name, cohort, git)
		puts "Now we have #{students.length} students"
		name = gets.chomp
	end
	```

Case statements:
	
	
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



