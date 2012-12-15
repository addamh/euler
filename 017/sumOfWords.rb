#!/usr/bin/env ruby

class Integer
   Ones = %w[ zero one two three four five six seven eight nine ]
   Teen = %w[ ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ]
   Tens = %w[ zero ten twenty thirty forty fifty sixty seventy eighty ninety ]
   Mega = %w[ none thousand million billion ]

   def to_english
     places = to_s.split(//).collect {|s| s.to_i}.reverse
     name = []
     ((places.length + 2) / 3).times do |p|
       strings = Integer.trio(places[p * 3, 3])
       name.push(Mega[p]) if strings.length > 0 and p > 0
       name += strings
     end
     name.push(Ones[0]) unless name.length > 0
     name.reverse.join(" ")
   end

   private

   def Integer.trio(places)
     strings = []
     if places[1] == 1
       strings.push(Teen[places[0]])
     elsif places[1] and places[1] > 0
       strings.push(places[0] == 0 ? Tens[places[1]] :
                    "#{Tens[places[1]]}-#{Ones[places[0]]}")
     elsif places[0] > 0
       strings.push(Ones[places[0]])
     end
     if places[2] and places[2] > 0
       if(places[0] == 0 && places[1] == 0)
        strings.push("hundred", Ones[places[2]])
       else
        strings.push("hundred and", Ones[places[2]])
       end
     end
     strings
   end
end

char_count = 0
1000.times do |i|
  char_count += (i+1).to_english.gsub(/\s+|-/, '').length
end

p char_count
