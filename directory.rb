# first put all of the students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex Delarge",
"The Wicked Witch of the West",
"Terinator",
"Freddie Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"]

def print_header
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_names(names)
  names.each do |s|
    puts s 
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print_names(students)
print_footer(students)