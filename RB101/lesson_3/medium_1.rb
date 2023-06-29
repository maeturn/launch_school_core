# QUESTION 1
indent = 0

while indent <= 10
  puts "#{" " * indent}The Flintstones Rock!"
  indent += 1
end

# QUESTION 2
# puts "the value of 40 + 2 is " + (40 + 2)
# error value is given because it's trying to add a string and a number.
# one way to fix this:
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is" + (40 + 2).to_s

# QUESTION 3
def factors(number)
  divisor = number
  factors = []
  while factors > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
# BONUS 1: number % divisor == 0, is checking if divisor goes into number evenly
# with no remainder, in other words, if divisor is a factor of number
# BONUS 2: The purpose of the second to last line "factors" is to make
# the factors array the return value

# QUESTION 4
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
# the first method is mutating the original object, so object_id never changes
# the second method is creating a new variable each time
# the first method has a meaningful return value AND has a side effect
# of mutating the input, which should be avoided

# QUESTION 5
# method's are self contained in their variable scope (they only have acess to variables defined w/in method)
# this can be fixed by initializing the variable w/in the method, or adding it as an argument

# QUESTION 6
# number objects are immutable, they can only be reassigned not mutated
# because of this when numbers are passed into a method it is pass by value
# the value of the number is passed in and the original variable is not changed

# QUESTION 7
# indexed assignment is a mutating method so yes the original has demos will be affected

# QUESTION 8
# paper
# the innermost calls are evaluated first and each return value is used
# to evaluate subsequent outer calls, eventually leading to rps(paper, rock) returns paper

# QUESTION 9
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)
# return value of foo will always be "yes"
# so bar(foo) is evaluated to bar("yes")
# while inside the bar method param == "no" evaluates to false
# therefore the return value will be "no"