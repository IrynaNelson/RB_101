def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Fetching your monthly interest rate...'
  when '2'
    'Fetching your loan duration in months...'
  when '3'
    'Calculating your monthly payment...'
  end
end

prompt("Welcome to car loan calculator!")

loop do
  prompt("Enter your loan amount: ")

  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp()
    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt("Make sure to use a valid number.")
    end
  end

  prompt("Your loan amount is #{loan_amount}!")

  annual_perc = ''
  monthly_interest_rate = ''
  loop do
    prompt("What's your Annual Percentage Rate (APR)?")
    annual_perc = Kernel.gets().chomp()

    if valid_number?(annual_perc)
      annual_perc = annual_perc.to_f / 100
      monthly_interest_rate = annual_perc / 12
      break
    else
      prompt("That doesn't look like a valid APR!")
    end
  end

  loan_duration_years = ''
  loan_duration_months = ''
  loop do
    prompt("What's your loan duration in years?")
    loan_duration_years = Kernel.gets().chomp()

    if valid_number?(loan_duration_years)
      loan_duration_years = loan_duration_years.to_f
      loan_duration_months = loan_duration_years * 12
      break
    else
      prompt("Hmm... that doesn't look like a real loan duration in years!")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform? 
  1) monthly interest rate
  2) loan duration in months
  3) monthly payment
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3).include?(operator)
      break
    else
      prompt("Must choose 1, 2 or 3")
    end
  end

  prompt("#{operation_to_message(operator)}")
  result = case operator
           when "1"
             monthly_interest_rate * 100
           when "2"
             loan_duration_months
           when "3"
            loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))
           end

  prompt("The result is #{result}")
  prompt("Do you want to perform another car loan calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the car loan calculator. Good bye!")