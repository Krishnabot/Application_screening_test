def find_median(a, b, c)
   if a <= b && b <= c
    median = b
   elsif b <= a && a <= c
   median = a
   else 
    median = c
   end
   return median
end

test = find_median(10, 10, 30)
puts test