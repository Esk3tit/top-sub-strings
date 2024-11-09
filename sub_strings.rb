def substrings(word, dictionary)
  # Return hash with dictionary words mapped to number of occurences in word (word
  # should be case insensitive when compared to dict words for substrings)
  substrs = {}
  words = word.downcase.split
  dictionary = dictionary.map { |dw| dw.downcase }
  words.each do |w|
    substrs_in_word = dictionary.select { |d| w.include?(d) }
    substrs_in_word.each do |substr|
      if !substrs[substr]
        substrs[substr] = 0
      end
      substrs[substr] += 1
    end
  end
  return substrs
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# expected_hash = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

# puts substrings("below", dictionary)
# puts substrings("Howdy partner, sit down! How's it going?", dictionary) == expected_hash 