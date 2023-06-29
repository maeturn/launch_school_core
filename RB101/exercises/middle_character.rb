def center_of(string)
  center = string.length / 2
  
  if string.length.odd?
    return string[center]
  elsif string.length.even?
    return string[center - 1, 2]
  end
end