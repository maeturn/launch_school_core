def palindrome?(input)
  first = 0
  last = input.length - 1
  
  while first < (input.length / 2)
    input[first] == input[last] ? (first +=1; last -= 1) : (return false)
  end
  
  true
end


def real_palindrome?(input)
  input = input.downcase.delete('^a-z', '^0-9')
  input == input.reverse
end

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

    