# QUESTION 1
if false
  greeting = "hello world"
end

greeting

# this will return nil because the if statement is always false,
# the initialization of greeting will never be evaluated, however
# there is no error thrown bc ruby still recognizes the initilation that was never run

# QUESTION 2
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# last line output is { a: 'hi there' }
# the informal_greeting variable references the original object
# and << is a mutating method

# QUESTION 3
# A) one == "one", two == "two", three == "three"
#     reassignment does not mutate the original object
# B) same answer as A
# C) this one uses a mutating(!) method so the original objects are changed
#     one == "two", two == "three", three == "one"

# QUESTION 4
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  ip_length = dot_separated_words.size
  return false unless ip_length == 4
  
  while ip_length > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end
