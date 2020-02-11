def input_students
    #empty array of students to shovel input to. 
    students = []
    #list of possible cohorts to compare ui to. 
    cohorts = [
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

    puts "Please input student information:"
    puts "To finish, please hit return twice"
    puts "What is their name?"
    name = gets.strip
    puts "Which cohort?"
    cohort = gets.strip
   
    while !cohorts.include? cohort.downcase do 
      puts "Please enter a valid cohort"
      cohort = gets.strip
    end

    puts "What is their height?"
    height = gets.strip
    puts "What is their hobby?"
    hobby = gets.strip
    
    while !name.empty? do
        students << {
          name: name, 
          cohort: cohort, 
          height: height, 
          hobby: hobby
      }
        
        puts "Now we have #{students.count} students"
        # get another name
        puts "Name:"
        name = gets.strip
        if name.empty?
          break
        end
        puts "Cohort:"
        cohort = gets.strip
        while !cohorts.include? cohort.downcase do 
          puts "Please enter a valid cohort"
          cohort = gets.strip
        end
        puts "Height:"
        height = gets.strip
        puts "Hobby:"
        hobby = gets.strip
    end
    return students
    sorted = students.sort_by { |k| k[:cohort] }
    sorted
    # sorted = {}
    # students.map do |stu|
    # cohort = stu[:cohort]
    #   if sorted[cohort] == nil
    #     sorted[cohort] = []
    #   end
    #   sorted[cohort] << stu
    # end
    
    # sorted.each do |key,value|
    #   key
    # end
end


def print_header
  puts "The students of Villains Academy".center(40)
  puts "--------------".center(40)
end

def print_s(s)
#   index = 0
#   stu_arr = student.to_a
#   while stu_arr[index]
  
  
#   puts "#{stu_arr[index]} cohort"
# end


  # s.map do |key,value|
  #   puts "#{key} cohort:".center(40)
  #   puts "Name: #{value.map {|a,b| a[:name]}}".center(40)
  #   puts "Height: #{value.map {|a,b| a[:height]}}".center(40)
  #   puts "Hobby: #{value.map {|a,b| a[:hobby]}}".center(40)
  #   puts ""
  # end


  ind = 0
  while ind < s.size  
    a = "#{ind+1}. #{s[ind][:name].capitalize.center(10)}"
    b = " Height: #{s[ind][:height].center(10)}"
    c =  " Hobby: #{s[ind][:hobby].capitalize.center(10)} (#{s[ind][:cohort].capitalize.center(0)} cohort)"    
    puts a + b + c
    ind += 1
  end

end

def print_footer(names)
  if names.count == 1 
  puts "Overall, we have #{names.count} great student".center(40)
  else 
    puts "Overall, we have #{names.count} great students".center(40)
  end
end

students = input_students
print_header
print_s(students)
print_footer(students)
# p input_students