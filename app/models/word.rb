#class for Model2 goes here
#Feel free to change the name of the class
class Word

    #I am commenting these out for the exercise of writing out setter/getter methods
    #attr_reader :lexical_item,:transcription,:meaning

    @@all = []

    #argument description:
        #word = (string) Word in standard English orthography
        #*transcription = (string) Phonetic transcription of word (in IPA)
        #*meaning = (array of strings) Each entry represents one meaning/usage of the word 
        #*synonym
        #*antonym
    def initialize(lexical_item)
        @lexical_item = lexical_item
        #@transcription = transcription
        #@meaning = meaning
        Word.all << self
    end

    def self.all
        @@all
    end

    def lexical_item
        @lexical_item
    end

    #This method takes a word (string object) argument and returns all the citations associated with that word
    def self.find_citations(word)
        #This loop will return the DictionaryEntry object where the word in that 
        entry = DictionaryEntry.all.select do |element| 
            element.word == word
        end
    end

    # def transcription
    #     @transcription
    # end

    # def meaning
    #     @meaning
    # end

    # def add_meaning(new_meaning)
    #     @meaning << new_meaning
    # end

end
