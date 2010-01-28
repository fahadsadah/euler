#!/usr/bin/ruby
file = File.new("13.dat", "r")
total = 0
(0..99).each do
	|x|
	total = total + file.gets.to_i
end
print total.to_s[0..9] + "\n"
