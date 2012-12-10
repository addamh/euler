#!/usr/bin/env ruby

range = 1..100
sum_of_squares = range.inject(0) { |sum, i| sum + i ** 2 }
square_of_sum  = range.inject(0) { |sum, i| sum + i } ** 2
puts square_of_sum - sum_of_squares
