#!/usr/bin/env ruby

letter_array = ("A".."Z").map{|l| l }
letter_hash = Hash[letter_array.map.with_index{|*ki| ki}]

file = File.open("/Users/addam/dev/euler/022/names.txt", "r")
contents = file.read.split(",").map!{|k| k.gsub!(/^\"|\"?$/, '') }

total_score = 0
puts letter_hash["z"]
contents.sort.each_with_index do |v,i|
  name_score = 0
  v.each_char do |c|
    name_score += letter_hash["#{c}"]+1
  end
  total_score += name_score * (i+1)
end
puts total_score


