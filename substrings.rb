
def substrings(phrase, dict)
    matched_words = phrase.downcase.split(/\W/).map do |string|
        dict.select { |word| string.include? word }
    end
    
    matched_words.flatten!

    results = Hash.new(0)
    matched_words.each do |word|
        results[word] += 1
    end
    
    return results
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)