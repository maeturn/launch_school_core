def prompt(message)
  Kernel.puts("=> message")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# ask for two numbers
prompt("Welcome to Calculator")

loop do
  num1 = ''
  loop do
    prompt("What's the first number?")
    num1 = Kernel.gets().chomp

    if valid_number?(num1)
      break
    else
      prompt("Not a valid number.")
    end
  end

  num2 = ''
  loop do
    prompt("What's the second number?")
    num2 = Kernel.gets().chomp

    if valid_number?(num2)
      break
    else
      prompt("NOT A VALID NUMBER.")
    end
  end

  # ask for operation
  operator_prompt = <<-MSG
      What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  prompt(operator_prompt)
  operator = ''

  loop do
    operator = Kernel.gets().chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, 4")
    end
  end

  prompt("#{operation_to_message(operator)} #{num1} and #{num2}...")

  # perform operation on two numbers
  case operator
  when '1'
    result = num1.to_i() + num2.to_i()
  when '2'
    result = num1.to_i() - num2.to_i()
  when '3'
    result = num1.to_i() * num2.to_i()
  when '4'
    result = num1.to_f() / num2.to_f()
  end

  # output result
  prompt("the result is #{result}")
  prompt("Do you want to perform another calculation? Y for yes")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using calculator!")
