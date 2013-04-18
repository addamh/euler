#!/usr/bin/env ruby

arr = []
(2..100).each do |a|
  (2..100).each do |b|
    arr.push a**b
  end
end
arr.uniq!
puts arr.length