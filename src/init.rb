
#!/user/env/bin ruby

require_relative 'classes/ShiftCipher'

# greeting = "Nathan"
# puts "Hello, #{greeting}"
# number_map = {
#     1=>"I",
#     2=>"II",
#     3=>"III",
#     4=>"IV",
#     5=>"V",
#     6=>"VI",
#     7=>"VII",
#     8=>"VIII",
#     9=>"IX",
#     10=>"X"
# }
# if  number_map[9] == "IX"
#     puts "Number IX found"  
# end
# unless number_map.empty?
#     puts "Map is not empty"
# end

# count = 5
# case count
# when 0
#     puts "No one in the party"
    
# when 1
#     puts "Only 1 person in the party"
# when 2..5
#     puts "Small group"
# else
#     puts "Too many people"
# end
# puts count == 0 ? "No one in the party" : "Its a party"
# greeting_enabled = false
# puts "Hello" if greeting_enabled
# MAX_VALUE  = 100
# limit = 10
# num_rings = limit || MAX_VALUE
# puts num_rings

# loop do
#     break if limit == 0
    
#     puts "Count down #{limit}"
#     limit -= 1
# end
# limit = 10
# while limit > 0
#     puts "Count down #{limit}"
#     limit -= 1
# end
#  cart = ["Apple", "Banana", "Orange"]
# # until cart.empty?
# #     item = cart.shift
# #     puts "#{item} is out of the cart now"
# # end

# returnValue = cart.inject do |memo, fruit|
#     if (fruit.length > memo.length)
#         fruit
#     else
#         memo
#     end
# end

# puts returnValue

# puts ShiftCipher.encode("abcd",3)


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

