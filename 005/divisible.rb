#!/usr/bin/env ruby

require "rational"

def smallest_divisor_for_range(start, stop)
  numbers = Range.new(start, stop).to_a
  numbers.inject(numbers.shift) { |lcm, n| lcm.lcm(n) }
end

puts smallest_divisor_for_range(1, 20)