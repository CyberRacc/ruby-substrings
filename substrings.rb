# typed: true

#Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(word, substrings_array)
    string_to_array = word.split(' ') # Creates an array of substrings from the given word string. Seperate substrings by spaces.
    string_to_array.each do |substring|
      
    end
end
