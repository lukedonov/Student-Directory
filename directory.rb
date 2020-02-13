@students = []

def instructions
    puts "Please input the name of students"
    puts "To finish, please hit return twice"
end
 
def input_students
    instructions
    name = STDIN.gets.chomp
    while !name.empty? do
        student_data(name,:november)
        puts "Now we have #{@students.count} students"
        name = STDIN.gets.chomp
    end
end

def print_header
  puts "The students of Villains Academy"
  puts "-"* 32
end

def print
  @students.each do |s|
    puts "#{s[:name]} (#{s[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
    puts "1. to input students"
    puts "2. to show current students"
    puts "3. to save students to a file"
    puts "4. to load students from a file"
    puts "9. Exit"
end

def show_students
    print_header
    print
    print_footer
end

def save_students(filename = STDIN.gets.chomp)
  return if filename.nil?
    if File.exists? (filename)
      file = File.open(filename, "w")
      @students.each do |student|
        student_data = [student[:name]],[student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
      end
    puts "Your files have been saved to #{filename}"
    file.close
  end
end

def load_message(filename)
  puts "Loaded #{@students.count} from #{filename}"
end

def student_data(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end


def load_students(filename = STDIN.gets.chomp)   
  if !File.exists? (filename)
    puts "That file does not exist"
    return
  elsif File.exists? (filename)
    File.open(filename,"r") do |file|
        file.readlines.each do |lines|
            name, cohort = lines.chomp.split(",")
            student_data(name, cohort)
        end
        load_message(filename)
    end
  end
end


def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists? (filename)
    load_students(filename)
  else
    puts "Sorry, the filename doesn't exist."
    exit
  end
end

def process(selection)
    case selection
    when "1"
        input_students
    when "2"
        show_students
    when "3"
        puts "Where would you like to save the students?"
        save_students
    when "4"
        puts "Enter the name of a file you'd like to load:"
        load_students
    when "9"
        exit
    else 
       puts "I didnt quite catch that"
    end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end



try_load_students
interactive_menu




# def load_students(filename = gets.chomp)   
#   return if filename.nil
#   if File.exists? (filename)
#     File.open(filename,"r") do |file|
#         file.readlines.each do |lines|
#             name, cohort = lines.chomp.split(",")
#             @students << {name: name, cohort: cohort.to_sym}
#         end
#       load_message(filename)
#       end
#   else
#     puts "That file does not exist"
#     return
#     end
#     file.close
# end
