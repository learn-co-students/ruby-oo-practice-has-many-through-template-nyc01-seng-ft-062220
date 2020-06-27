class Dictionary

    #attr_reader :dictionary

    def initialize
        @dictionary = DictionaryEntry.all
    end

      #this method should alphabetize the list of entries in the dictionary alphabetically by Word.word.
    # def alphabetize
    # end


    def dictionary
        @dictionary
    end

    #this method returns the lexical item (= word) of every entry in the dictionary
    def display_words
        words = self.dictionary.map do |dictionary_entry|
            dictionary_entry.word.lexical_item
        end
        words 
    end

    #given an argument of a lexical_item, this method will return the Word object associated with that lexical_item
    def find_word(lexical_item)
        
    end

    #given an argument of a lexical_item (string object), this method will return all the meanings associated with that word
    def find_meaning(lexical_item)
        
    end

end