def print_in_box(string)
  if string.length < 76
    width = string.length + 2
  else
    halfway = string.length / 2
    width = halfway + 2
    width += 1 if string.length.odd?
  end

  horizontal_line = "+#{'-' * width}+"
  empty_line = "|#{' ' * width}|"

  puts horizontal_line
  puts empty_line
  
  unless string.length < 76
    puts "| #{string[0, halfway]} |"
    puts "| #{string[halfway, 152]} |"
  end
  
  puts empty_line
  puts horizontal_line
end

print_in_box('This is a really super long idk how it will all fit it might not work omg ok lets see')