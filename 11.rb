#!/usr/bin/ruby
file = File.new("11.dat", "r")
grid = Array.new
(0..19).each do
	|y|
	grid[y] = Array.new
	i = 0
	file.gets.split.each do
		|x|
		grid[y][i] = x.to_i
		i += 1
	end
end
biggestprod = 0
(0..19).each do
	|y|
	(0..19).each do
		|x|
		#up
		if y - 3 >= 0 then
			prod = grid[y][x] * grid[y-1][x] * grid[y-2][x] * grid[y-3][x]
			biggestprod = prod if prod > biggestprod
		end
		#down
		if y + 3 <= 19 then
			prod = grid[y][x] * grid[y+1][x] * grid[y+2][x] * grid[y+3][x]
			biggestprod = prod if prod > biggestprod
		end
		#left
		if x - 3 >= 0 then
			prod = grid[y][x] * grid[y][x-1] * grid[y][x-2] * grid[y][x-3]
			biggestprod = prod if prod > biggestprod
		end
		#right
		if x + 3 <= 19 then
			prod = grid[y][x] * grid[y][x+1] * grid[y][x+2] * grid[y][x+3]
			biggestprod = prod if prod > biggestprod
		end
		#up-left
		if y - 3 >= 0 && x - 3 >= 0 then
			prod = grid[y][x] * grid[y-1][x-1] * grid[y-2][x-2] * grid[y-3][x-3]
			biggestprod = prod if prod > biggestprod
		end
		#up-right
		if y - 3 >= 0 && x + 3 <= 19 then
			prod = grid[y][x] * grid[y-1][x+1] * grid[y-2][x+2] * grid[y-3][x+3]
			biggestprod = prod if prod > biggestprod
		end
		#down-left
		if y + 3 <= 19 && x - 3 >= 0 then
			prod = grid[y][x] * grid[y+1][x-1] * grid[y+2][x-2] * grid[y+3][x-3]
			biggestprod = prod if prod > biggestprod
		end
		#down-right
		if y + 3 <= 19 && x + 3 <= 19 then
			prod = grid[y][x] * grid[y+1][x+1] * grid[y+2][x+2] * grid[y+3][x+3]
			biggestprod = prod if prod > biggestprod
		end
	end
end
print "biggestprod is " + biggestprod.to_s + "\n"
