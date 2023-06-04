def flatten_array(arr)
flattenedarr = []

arr.each do |element|
    if element.is_a?(Array)
        flattenedarr += flatten_array(element)
    else
        flattenedarr << element
    end
end
return flattenedarr

end

array =  [1, [2, [3, 4], 5], 6, [7]]
test = flatten_array(array)

puts test.inspect