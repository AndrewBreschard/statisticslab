print "This is a statistics analysis program it analizes the number of barrels of oil made in the persian gulf coast. Type '1' to continue: "
con = gets.to_i
if con == 1
	f = File.new("international-petroleum-world-cr.csv", "r")
	a = f.readlines
	f.close
	d = 0
	b = a.collect do |c|
		c = c.split(",")
		d = c[1].to_f + d
	end
	e = b.length
	g = d/e
	puts "The average number of barrels of oil per month is:"
	puts g
	k = 0
	h = a.collect do |c|
		c = c.split(",")
		i = c[1].to_f - g
		j = i**2
		k = k + j
	end
	l = k/e
	m = Math.sqrt(l)
	puts "The standard deviation is:"
	puts m
	puts "Thank you for using this program"
	n = File.new("z-score.csv", "a")
	o = a.collect do |c|
		c = c.split(",")
		q = c[1].to_f - g
		r = q/m
		n.puts r
	end
else
print "You did not tell the program to continue..."
end
