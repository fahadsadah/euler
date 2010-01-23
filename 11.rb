#!/usr/bin/ruby
file = File.new("11.dat", "r")
(0..19).each do
	|x|
	i = 0
	file.gets.split.each do
		|y|
		grid[x][i] = y
		i += 1
	end
end
