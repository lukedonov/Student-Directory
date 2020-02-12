@students = []

def instructions
    puts "Please input the name of students"
    puts "To finish, please hit return twice"
end

def input_students
    instructions
    name = gets.chomp
    while !name.empty? do
        @students << {name: name, cohort: :november}
        puts "Now we have #{@students.count} students"
        name = gets.chomp
    end
end

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print
  @students.each do |s|
    puts "#{s[:name]} (#{s[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print_menu
    puts "1. to input students "
    puts "2. to show current students"
    puts "9. Exit"
end

def show_students
    print_header
    print
    print_footer(@students)
end

def process(selection)
    case selection
    when "1"
        input_students
    when "2"
        show_students
    when "9"
        exit
    else 
       puts "I didnt quite catch that"
    end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu

def save_students
    file = File.open("students.csv", "w")

    @students.each do |student|
        student_data = [student[:name]],[student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    file.close
end