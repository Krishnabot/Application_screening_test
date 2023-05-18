def count_characters(string)
    character_count = Hash.new(0)
  
    string.each_char do |char|
      next if char == ' '
  
      char = char.downcase
      character_count[char] += 1
    end
  
    character_count
  end
  