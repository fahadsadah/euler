#!/usr/bin/ruby
n = 1
divisors = 0
while divisors < 500 do
	n = n + 1
	triangle = (n*(n+1))/2
	divisors = 0
	if triangle % 2 == 0 then
		to = triangle / 2
	else
		to = (triangle / 2).round
	end
	print "Factors of #{triangle}: "
	first = 1
	(1..to).each do
		|x|
		if triangle % x == 0 then
			divisors = divisors + 1
			if first == 1 then
				print x.to_s
				first = 0
			else
				print ", #{x}"
			end
		end
	end
	print "\n"
end
print "divisors is #{divisors}\n"
