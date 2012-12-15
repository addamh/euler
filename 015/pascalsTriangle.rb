#!/usr/bin/env ruby

class Integer 
	def choose(k) 
		(self-k+1..self).reduce(:*) / (2..k).reduce(:*)
	end
end

puts 40.choose(20)

