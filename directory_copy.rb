def input_students
    puts "Please input the name of students"
    puts "To finish, please hit return twice"
    #create an empty array 
    students = []
    # get the first name
    name = gets.chomp
    while !name.empty? do
        #add the student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # get another name
        name = gets.chomp
    end
    #return students
    students
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end


# def print_students(students)
#   students.each.with_index do |s,index|
#     if s[:name].length < 12
#       puts  "#{index+1}. #{s[:name]} (#{s[:cohort]} cohort)"
#     end
#   end
# end
def print_s(students)
index = 0
  while index < students.size
    puts "#{index+1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
    index += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_s(students)
print_footer(students)