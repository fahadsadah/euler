#!/usr/bin/ruby
number = 2 ** 1000
sum = 0
number.to_s.each_char do
	|x|
	sum = sum + x.to_i
end
print "sum is #{sum}\n"
