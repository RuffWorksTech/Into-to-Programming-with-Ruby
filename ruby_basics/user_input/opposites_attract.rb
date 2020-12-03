def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def opposites?(num1, num2)
  num1 = num1.to_i
  num2 = num2.to_i
  
  ((num1 > 0) && (num2 < 0)) || ((num1 < 0 ) && (num2 > 0))
end

def addition(int1, int2)
  int1 = int1.to_i
  int2 = int2.to_i

  sum = int1 + int2
  puts ">> #{int1} + #{int2} = #{sum}"
end

input1 = nil
input2 = nil

#Get inputs
loop do

  loop do
    puts ">> Please enter a positive or negative integer:"
    input1 = gets.chomp
    break if valid_number?(input1)
    puts "Invalid input. Only non-zero integers are allowed."
   end
  
  loop do
    puts ">> Please enter a second positive or negative integer:"
    input2 = gets.chomp
    break if valid_number?(input2)
    puts "Invalid input. Only non-zero integers are allowed."
   end

  break if opposites?(input1, input2)
  puts ">> Sorry. One integer must be positive, one must be negative. Please start over."
  
end

addition(input1, input2)