#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
    @@all = []
    attr_accessor :name, :specialty
    def initialize(name, specialty)
        @name = name
        @specialty = specialty
        Doctor.all << self
    end

    def self.all
        @@all
    end
    
end

