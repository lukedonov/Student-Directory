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

def print_students(students)
  students.each do |s|
    puts  "#{s[:name]} (#{s[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

# students = input_students
# print_header
# print_students(students)
# print_footer(students)

def interactive_menu
  students = []
  loop do 
    puts "1. to input students "
    puts "2. to show current students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
        students = input_students
    when "2"
        print_header
        print_students(students)
        print_footer(students)
    when "9"
        exit
    else 
       puts "I didnt quite catch that"
    end


  end



end

interactive_menu