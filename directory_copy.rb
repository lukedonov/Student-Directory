@students = [].sort_by { |k| k[:cohort] }
@cohorts = [
  "january",
  "febuary",
  "march",
  "april",
  "may",
  "june",
  "july",
  "august",
  "september", 
  "october", 
  "november", 
  "december"]

def instructions
  puts "Please input student information:"
  puts "To finish, please hit return twice"
end

def get_name
  puts "Name:"
  name = gets.strip
end

def get_cohort
  while true do
    puts "Cohort:"
    cohort = gets.strip
    if @cohorts.include? cohort.downcase
      break
    else 
      puts "Please enter a valid cohort."
    end
  end
  cohort
end

def get_height
  puts "Height:"
  height= gets.strip
end

def get_hobby
  puts "Hobby:"
  hobby = gets.strip
end

def get_students
  get_name
  get_cohort
  get_height
  get_hobby
end

def input_students
  instructions
  name = get_name
  while !name.empty? do
    @students << {name: name, cohort: get_cohort, height: get_height, hobby: get_hobby}
    @students.count == 1 ? (puts "Now we have #{@students.count} student") : (puts "Now we have #{@students.count} students")
    puts "Name:"
    name = gets.strip
  end
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "--------------".center(80)
end

def print_students
  @students.each do |s| 
    name = "Name: #{s[:name].capitalize}".center(20)
    cohort = " Cohort: #{s[:cohort].capitalize}".center(20)
    height = " Height: #{s[:height]}".center(20)
    hobby = "Hobby: #{s[:hobby].capitalize}".center(20)
    puts name + cohort + height + hobby 
  end
end

def print_footer
  if @students.count == 1 
  puts "Overall, we have #{@students.count} great student".center(80)
  else 
    puts "Overall, we have #{@students.count} great students".center(80)
  end
end

students = input_students
print_header
print_students
print_footer
