blanket_pattern = "RRGGBBYY"
lines = 20
counter = 0
blanket_pattern_length = blanket_pattern.length


while counter < lines
    #puts blanket_pattern
    start = counter.modulo(blanket_pattern_length)
    first_half = blanket_pattern[start..-1]
    second_half = blanket_pattern[0...start]
    puts first_half + " " + second_half
    
    counter += 1
end
puts "==============="
lines.times do |i|
    puts blanket_pattern
    first = blanket_pattern[1..-1]
    rest = blanket_pattern[0]
    puts blanket_pattern = first + rest
end
puts "|||||||||||||||||||||||||||||"
blanket_pattern = "RRGGBBYY"
blanket_pattern_array = blanket_pattern.split('')
1.upto(lines) do |i|
    puts blanket_pattern_array.join
    first = blanket_pattern_array.shift
    blanket_pattern_array << first
end