#!/usr/bin/env ruby

a = b = 1
i = 2
while b.to_s.length < 1000
   a, b = b, a+b
   i += 1
end
puts i