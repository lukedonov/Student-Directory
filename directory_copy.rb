def input_students
    students = []
    puts "Please input student information:"
    puts "To finish, please hit return twice"
    puts "What is their name?"
    name = gets.chomp
    puts "What is their height?"
    height = gets.chomp
    puts "What is their hobby?"
    hobby = gets.chomp
    
    while !name.empty? do
        students << {name: name, 
        cohort: :november, 
        height: height, 
        hobby: hobby
      }
        puts "Now we have #{students.count} students"
        # get another name
        puts "Name:"
        name = gets.chomp
        if name.empty?
          break
        end
        puts "Height:"
        height = gets.chomp
        puts "Hobby:"
        hobby = gets.chomp
    end
    #return students
    students
    
end

def print_header
  puts "The students of Villains Academy".center(40)
  puts "--------------".center(40)
end

def print_s(s)
ind = 0
  while ind < s.size
    puts "#{ind+1}. #{s[ind][:name]} (#{s[ind][:cohort]} cohort)".center(40)
    puts "Height: #{s[ind][:height]}".center(40)
    puts "Hobby: #{s[ind][:hobby]}".center(40)
    ind += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(40)
end

students = input_students
print_header
print_s(students)
print_footer(students)