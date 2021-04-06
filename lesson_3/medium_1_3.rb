def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end
p "Please, enter a number greater than 0"
input = gets.chomp().to_i()

p factors(imput)