def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def division(numerator, denominator)
  numerator = numerator.to_i
  denominator = denominator.to_i

  result = numerator / denominator
  remainder = numerator % denominator
  puts ">> #{numerator} / #{denominator} = #{result} with a remainder of #{remainder}"
end

numerator = nil
denominator = nil

#Get numerator and check if valid
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers are allowed."
 end

#Get denominator and check if valid
loop do
   puts ">> Please enter the denominator:"
  denominator = gets.chomp
  if denominator.to_i == 0
    puts "Invalid input. A denominator of 0 is not allowed."
    next
  end
  break if valid_number?(denominator)
  puts "Invalid input. Only integers are allowed."
 end

#Calculation
division(numerator, denominator)