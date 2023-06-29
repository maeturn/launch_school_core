# QUESTION 1
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# c and a will have the same object_id, b will have a different object_id

# QUESTION 2
a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# a, b, and c will have the same object_id because numbers have pre set immutable objects

# QUESTION 3
def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

# reassignment (+=) is non-mutating, it will create a new object
# concatenating (<<) is mutating, it will affect the original object
# string_arg_one will be "pumpkins"
# string_arg_two will be "pumpkinsrutabaga"

# QUESTION 4
# my_string will be mutated by the << mutating method, "pumpkinsrutabga"
# my_array will not be mutated bc reassinment creates a new object

# QUESTION 5

# in order to change the value of the variables without mutating them
# inside of the method, the method must return a meaningful value w/o sude effects
# then the variables can be reassingned to the return value outside of the method

# QUESTION 6

def color_valid(color)
  color == "blue" || color == "green"
end
