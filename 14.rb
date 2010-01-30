#!/usr/bin/ruby
maxterms = 1
maxstarter = 1
(1..1000000).each do
	|x|
	original = x
	terms = 1
	until x == 1 do
		if x % 2 == 0 then
			#x is even
			x = x/2
		else
			#x is odd
			x = (3 * x) + 1
		end
		terms = terms + 1
	end
	if terms > maxterms then
		maxstarter = original
		maxterms = terms
	end
	print "#{original} gives #{terms} terms\n"
end
print "#{maxstarter} gives #{maxterms} terms\n"
