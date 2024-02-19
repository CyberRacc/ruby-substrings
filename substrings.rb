# typed: true

#Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(word, dictionary_array)
    string_count = {} # Create an empty hash
    scan_output = []
    word_array = word.split(' ') # Creates an array of substrings from the given word string. Seperate substrings by spaces.

    word_array.each do |word_from_array|
        clean_substring = word_from_array.gsub(/[[:punct:]]/, '').downcase # Remove punctuation and downcase the string
        scan_output.push(clean_substring.scan(word_from_array))
    end

    dictionary_array.each do |dictionary_word| # 
        puts scan_output
        string_count[dictionary_word] = scan_output.count(dictionary_word) # Something called the scan method may work here.
    end

    # Return a hash containing each substring as the key, and how many times it was found as the value.
    return string_count
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
