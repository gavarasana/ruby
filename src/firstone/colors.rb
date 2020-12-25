puts "What is your name? "
response = gets
puts "Hello, #{gets.chomp}"


colors = "=|/|/|=|/|"
lines = 20
halfway = (lines/2).floor
colorsArray = colors.split('')

1.upto(halfway) do |x|
    firstItem = colorsArray.shift
    colorsArray << firstItem
    puts colorsArray.join
end

puts "-----------------"
colorsArray.length.times do |i|
    if (colorsArray[i] == '/')
        colorsArray[i] = '\\'
    end
    i += 1
end
puts colorsArray.join

1.upto(halfway) do |x|
    lastItem = colorsArray.pop
    colorsArray.unshift(lastItem)
    puts colorsArray.join
end
