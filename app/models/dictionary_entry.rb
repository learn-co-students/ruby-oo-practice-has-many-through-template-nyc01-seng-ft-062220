#class for Model1 goes here
#Feel free to change the name of the class
class DictionaryEntry

    #attr_reader :word, :citation

    @@all = []

    #argument description:
        #word = Word object
        #citation = Citation object
    def initialize(word, citation)
        @word = word
        @citation = citation
        DictionaryEntry.all << self
    end

    def self.all
        @@all
    end

    def word
        @word
    end

    def citation
        @citation
    end

end
