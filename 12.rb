#!/usr/bin/ruby
n = 1
divisors = 0
while divisors < 500 do
	n = n + 1
	triangle = (n*(n+1))/2
	divisors = 0
	if Math.sqrt(triangle) % 2 == 0 then
		to = Math.sqrt(triangle)
	else
		to = Math.sqrt(triangle).round
	end
	(1..to).each { |x| divisors = divisors + 1 if triangle % x == 0	}
	divisors = divisors * 2
	print "#{triangle} has #{divisors} divisors\n"
end
print "divisors is #{divisors}\n"
