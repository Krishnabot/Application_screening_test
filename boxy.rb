def boxy(n)
  #total width of the box
  box_width = 4
  total_width = n * (box_width + 1) - 1

  # upper line
  puts "-" * total_width

  #  number rows
  1.upto(n) do |i|
    print "| #{i} "
  end
  puts "|"

  # lower line
  puts "-" * total_width
end
  
  
  boxy(3)
  boxy(20)