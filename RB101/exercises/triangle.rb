def triangle(number)
counter = 1
  loop do
    (number - counter).times {print " "}
    counter.times {print "*"}
    counter += 1
    puts
    break unless counter <= number
  end
end
  