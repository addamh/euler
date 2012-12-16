#!/usr/bin/env ruby

final_sum=0
    
2.upto(9999) do |a|
  sum1=0
  1.upto(a/2) do |b|
    if a%b == 0
      sum1+=b
    end
  end
  sum2=0
  if sum1<a 
    1.upto(sum1/2) do |c|
      if sum1%c == 0
        sum2+=c
      end
    end
    if sum2==a
      final_sum+=a
      final_sum+=sum1
    end
  end
end

puts final_sum
