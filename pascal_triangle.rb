def pascal_triangle(n)
  last_array = [1,1]
  next_array = []
  puts "1"
  puts "1 1"
  n.times do |i|
    next_array << 1
    (last_array.length-1).times do |x|
      next_array << last_array[x] + last_array[x+1]
    end
    next_array << 1
    puts next_array.join(" ")
    last_array = next_array
    next_array = []
  end

end

pascal_triangle(10)
