#!/usr/bin/ruby
file = File.new("11.dat", "r")
grid = Array.new
(0..19).each do
	|y|
	grid[y] = Array.new
	i = 0
	file.gets.split.each do
		|x|
		grid[y][i] = x
		i += 1
	end
end
grid.each do
	|x|
	grid[x].each do
		|y|
	end
end
