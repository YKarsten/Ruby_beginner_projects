
def substring(text, dictionary)
   
    # Init empty Hash
    out = Hash.new(0)
    # case insensitive
    lowered_text = text.downcase

    # Look within the input string if there is a match to the dictionary
    # str.scan(word) outputs an array matched strings
    # Thus, the length of array corresponds to the number of hits in dictionary
    # Populate the output hash, unless the value is 0 (no hit)
    dictionary.each do |word|
        matches = lowered_text.scan(word).length
        out[word] = matches unless matches == 0
    end

return out
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sentence="Howdy partner, sit down! How's it going?"

p substring(sentence, dictionary)