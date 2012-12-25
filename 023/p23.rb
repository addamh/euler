#!/usr/bin/env ruby
require 'mathn'

class Integer
  def factors
    return [1] if self == 1
    primes, powers = self.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
      primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
    end
    divisors.slice(0, divisors.length-1)
  end
  
  def abundant?
    factors.reduce(:+) > self
  end
end

range = (1..20161)
abundants = range.select { |n| n.abundant? }
sums = []
abundants.each do |x|
    abundants.sort!.each do |y|
        a = x + y
        sums.push a unless a > 20161
    end
end

p (range.to_a - sums.uniq!.sort).reduce(:+)

