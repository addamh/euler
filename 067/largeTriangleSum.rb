#!/usr/bin/env ruby

file = File.open("/Users/addam/dev/euler/067/triangle.txt", "r")
contents = file.read
rows = contents.each_line.map { |line| line.split.map(&:to_i) }

for i in (rows.length-2).downto(0).to_a do
  for j in (i).downto(0).to_a do
    rows[i][j] += [rows[i+1][j].to_i,rows[i+1][j+1].to_i].max
  end
end

p rows[0][0]