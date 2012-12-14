#!/usr/bin/env ruby

require 'prime'

def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors.sort.map{|div| [div, number / div]}
end

sequence = Enumerator.new do |yielder|
  number = 0
  loop do
    number += 1
    yielder.yield number
  end
end

sequence.each do |i|
  t = i*(i+1)/2
  factors = []
  if t > 1
    factors_of(t).each do |chunk|
     factors.push(chunk[0])
     factors.push(chunk[1])
    end
    if factors.uniq.length > 500
      p t
      break
    end
  end
end
