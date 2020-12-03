loop do
  puts ">> How many output lines do you want? Enter a number >=3 ('Q' to quit)"
  input = gets.chomp
  break if input.downcase == 'q'
  
  input = input.to_i
  if input < 3
    puts "That's not enough lines."
  elsif input >=3
    input.times { puts "Launch School is the best!" }
  end
end