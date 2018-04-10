multiple = 1

(1...1000).each do { |i|
    multiple += i if (i%3 == 0) || (i%5 == 0) }
end 

puts total 