#!/usr/bin/env ruby

store = Array.new
(100..999).each do |x|
   (100..999).each do |y|
      product = x*y
      if product.to_s == product.to_s.reverse
         store << product
      end
   end
end
store = store.sort
puts store.last