# typed: true

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(word, dictionary_array)
    string_count = {} # Create an empty hash
    clean_string = word.downcase.gsub(/[[:punct:]]/, '') # Cleans the word value to remove punctuation and convert to lower case.
    dictionary_array.each do |dictionary_word| # Iterate over each word in the dictionary_array
        matches = clean_string.scan(dictionary_word) # Scans the clean_string for anything that matches the current dictionary word. .scan returns an array.
        count = matches.length # Count is equal to the length of the matches array, essentially counting the number of matches the previous line scan method found.
        if count > 0 # Check to make sure sure we aren't pushing 0 values where there are no matches to the hash.
            string_count[dictionary_word] = count
        end
    end

    # Return a hash containing each substring as the key, and how many times it was found as the value.
    return string_count
end
