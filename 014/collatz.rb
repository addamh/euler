#!/usr/bin/env ruby

def collatz(stack, n)
  stack.push(n)
  if n > 1
    if(n % 2 == 0)
      collatz(stack, n/2)
    else
      collatz(stack, 3*n+1)
    end
  end
  return stack
end

sequence = Enumerator.new do |yielder|
  number = 0
  loop do
    number += 1
    yielder.yield number
  end
end

max = {:i => 1, :l => 0}
sequence.each do |i|
  a = collatz([], i)
  l = a.length
  if max[:l] < l
    max[:i] = i
    max[:l] = l
  end
  break if i > 1000000
end

p max[:i]