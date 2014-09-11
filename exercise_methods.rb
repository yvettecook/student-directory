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

