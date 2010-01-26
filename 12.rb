#!/usr/bin/ruby
n = 1
factors = 0
while factors < 500 do
	n = n + 1
	triangle = (n*(n+1))/2
	factors = 0
	if Math.sqrt(triangle) % 2 == 0 then
		to = Math.sqrt(triangle)
	else
		to = Math.sqrt(triangle).round
	end
	(1..to).each { |x| factors = factors + 1 if triangle % x == 0	}
	factors = factors * 2
	print "#{triangle} has #{factors} factors\n"
end
print "factors is #{factors}\n"
