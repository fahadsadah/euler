#!/usr/bin/ruby
file = File.new("11.dat", "r")
grid = Array.new
(0..19).each do
	|x|
	grid[x] = Array.new
	i = 0
	file.gets.split.each do
		|y|
		grid[x][i] = y
		i += 1
	end
end
