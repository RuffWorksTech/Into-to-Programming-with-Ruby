#1
puts "#1 ----------------------"
arr = Array(1..10)
arr.each { |n| puts n }
puts "\n"

#2
puts "#2 ----------------------"
arr.each { |n| puts n if n > 5 }
puts "\n"

#3
puts "#3 ----------------------"
odds = arr.select { |n| n % 2 != 0 }
p odds
puts "\n"

#4
puts "#4 ----------------------"
arr << 11
arr.unshift(0)
p arr
puts "\n"

#5
puts "#5 ----------------------"
arr.pop
arr << 3
p arr
puts "\n"

#6
puts "#6 ----------------------"
arr.uniq!
p arr
puts "\n"

#7 Arrays are values with numeric indices in order. Hashes are key-value pairs.

#8
puts "#8 ----------------------"
hash1 = { :key1 => "value1" }
hash2 = { key2: "value2" }
puts hash1
puts hash2
puts "\n"

#9
puts "#9 ----------------------"
h = { a: 1, b: 2, c: 3, d: 4 }
#a.
puts h[:b]
#b.
h[:e] = 5
puts h
#c.
h.delete_if { |k,v| v < 3.5 }
puts h
puts "\n"

#10 Yes, hash values can be arrays and you can have an array of hashes.
puts "#10 ----------------------"
hash_array = { brothers: ['tyler', 'spencer', 'jaxson', 'myles', 'reese'] }
p hash_array
arr_of_hashes = [{older: 'tyler'}, {younger: "spencer"}, {younger: "jaxson"}, {younger: "myles"}, {younger: "reese"}]
p arr_of_hashes
puts "\n"

#11
puts "#11 ----------------------"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts["Joe Smith"][:email] = contact_data.first.first
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data.first.last
contacts["Sally Johnson"][:email] = contact_data.last.first
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data.last.last
puts contacts
puts "\n"

#12
puts "#12 ----------------------"
puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"
puts "\n"

#13
puts "#13 ----------------------"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with? "s" }
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |word| word.start_with?("s", "w") }
p arr
puts "\n"

#14
puts "#14 ----------------------"
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

a = a.map { |v| v = v.split }
a = a.flatten
p a
puts "\n"

#15 These hashes are the same!

#16
puts "#16 ----------------------"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567", "Slow Joe"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454", "Sal"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone, :nickname]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.first.shift
    if contact_data.first.empty?
      contact_data = contact_data.drop(1)
    end
  end
end
p contacts