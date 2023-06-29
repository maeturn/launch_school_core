def above_zero?(num)
  num > 0
end

puts "Welcome to mortgage Calculator. Congrats on buying a house!"

loan_amount = ''
loop do
  puts "What is the total amount of your loan in USD?"
  loan_amount = gets.chomp.to_f
  above_zero?(loan_amount) ? break : puts("Please enter a valid amount.")
end

years_duration = ''
loop do 
  puts "What is the length of your loan in years?"
  years_duration = gets.chomp.to_f
  above_zero?(years_duration) ? break : puts("Please enter a valid length.")
end

apr = ''
loop do
  puts "What is your Annual Percentage Rate (%)?"
  apr = gets.chomp.to_f * 0.01
  above_zero?(apr) ? break : puts("Please enter a valid amount.")
end


months_duration = (years_duration * 12).to_i
monthly_interest = apr / 12

monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-months_duration)))

puts("You will be paying $#{monthly_payment.round(2)} per month for #{months_duration} months!")

