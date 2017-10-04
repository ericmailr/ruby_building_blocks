def substrings(string, dictionary)
  arr = string.split()
  matches = {}
  matches.default = 0
  dictionary.each do |substring|
    arr.each do |str|
      if (str.downcase.include?(substring))
        matches[substring] += 1
      end
    end
  end
  puts matches.to_s
end

puts substrings("hey", ["he", "h", "oh"])