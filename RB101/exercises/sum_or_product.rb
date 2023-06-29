puts '=> Enter an integer greater than zero'
integer = gets.chomp.to_i

puts '=> Enter p to calculate the product or s to calculate the sum'
command = gets.chomp.downcase

if command == 'p'
  product = (1..integer).inject(:*)
  puts "The product of integers between 1 and #{integer} is #{product}."
elsif command == 's'
  sum = (1..integer).inject(:+)
  puts "The sum of integers between 1 and #{integer} is #{sum}."
else
  puts 'Please enter a valid command [s (or) p].'
end


=begin ALTERNATE SOLUTION

 def compute_product(integer)
  product = 1
  (1..integer).each { |num| product *= num }
end

def compute_sum(integer)
  sum = 0
  (1..integer).each { |num| sum += num }
end

=end 