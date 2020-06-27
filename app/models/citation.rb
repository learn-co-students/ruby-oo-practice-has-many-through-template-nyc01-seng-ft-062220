#class for Model3 goes here
#Feel free to change the name of the class
class Citation

    #attr_reader :sentence
    @@all = []

    #argument description:
        #sentence = (string) A complete sentence (in the future*) scraped from the internet.
    def initialize(sentence)
        @sentence = sentence
        Citation.all << self
    end

    def self.all
        @@all
    end

    def sentence
        @sentence
    end

    #this method will parse at @sentence and create a dictionary entry for each word in that sentence, 
    #with Citation.self as citation
    #I NEED TO UPDATE THIS TO NOT MAKE DUPLICATE ENTRIES
    def create_dictionary_entries_from_citation
        word_array = self.sentence.split
        word_array.each do |element|
            DictionaryEntry.new(element,self)
        end
    end
end
