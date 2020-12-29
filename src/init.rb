#!/usr/bin/env ruby

# require_relative 'classes/person'
# require_relative 'classes/ToDoList'

# person = Person.new({date_of_birth: Time.local(1972, 8, 10)})
# person.first_name = "Ravi"
# person.last_name = "Gavarasana"
# puts person.class
# puts person.object_id
# puts person.full_name
# puts person.initial_and_last_name
# puts person.date_of_birth

# puts "Original List"
# toDoList = ToDoList.new(["Dishes", "Nap", "Laundry", "Vaccum"])
# toDoList.each {|item| puts item}

# toDoList << "Sweep"
# puts "Update list"
# toDoList.each {|item| puts item}


# puts "sorted list"
# toDoList.sort.each {|item| puts item}

puts File.join('', 'Users', 'gavar', 'Desktop', 'ruby')

puts "This file (relative) " + __FILE__

puts "This dir (relative) " + File.dirname(__FILE__)

puts "This dir (relative) " + File.expand_path(__FILE__)


puts "This dir (absolute) " + File.expand_path(File.dirname(__FILE__))

file = File.new('grocercies.txt', 'w')
file.puts 'Grocery list:'
file.print "1) Butter\n"
file.write "2) Milk\n"
file << "3) Sugar"
file.close

# File.open('grocercies.txt', 'r') do |file1|

#     while line = file1.gets
#         puts file1.gets.chomp

#     end
# end


File.open('grocercies.txt', 'r') do |file1|

    line1 = file1.gets.chomp
    puts line1.upcase

    puts "****"

    file1.each_line do |line|
        puts line.chomp.reverse
    end
end