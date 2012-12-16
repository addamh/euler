#!/usr/bin/env ruby

puts 100.downto(1).to_a.reduce(&:*).to_s.each_char.to_a.map!{|k| k.to_i}.reduce(:+)