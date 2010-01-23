#!/usr/bin/ruby
file = File.new("8.dat", "r")
number = file.gets
number = number.split("")
biggestprod = 0
(0..995).each do
	|x|
	prod = number[x].to_i * number[x+1].to_i * number[x+2].to_i * number[x+3].to_i * number[x+4].to_i
	biggestprod = prod if prod > biggestprod
end
print "biggestprod is " + biggestprod.to_s + "\n"
