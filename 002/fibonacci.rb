#!/usr/bin/env ruby
valOne = sum = result = 0
valTwo = 1

until sum > 4000000
   sum = valOne + valTwo
   valOne = valTwo
   valTwo = sum
   if (sum % 2) == 0
      result = sum + result
   end
end

puts result