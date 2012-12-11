#!/usr/bin/env ruby

for a in (1..300)
  for b in (1..400)
    for c in (1..500)
      if a*a + b*b == c*c
        if a+b+c == 1000
          puts a*b*c
          exit
        end
      end
    end
  end
end