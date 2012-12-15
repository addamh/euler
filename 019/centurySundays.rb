#!/usr/bin/env ruby

require 'date'

sunday_count = 0

1.upto(100).with_index.each do |i|
  1.upto(12).with_index.each do |j|
    sunday_count += 1 if Date.new(1900+i,j,1).cwday == 7
  end
end

p sunday_count
