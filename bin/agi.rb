require 'date'

now = DateTime.now

range = Range.new(now, now + 100)

solution = range.select do |d|
	d <= now + 28 &&
		d.wday == 6 &&
		( d.day / 7 != 1 || d.day / 7 != 3)
end.max

puts solution
