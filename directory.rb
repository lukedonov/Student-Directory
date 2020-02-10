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
# then we print all of the students
puts "The students of Villains Academy"
puts "--------------"
students.each do |s|
    puts s 
end

# finally we print the total number of students 
puts "Overall, we have #{students.count} great students"