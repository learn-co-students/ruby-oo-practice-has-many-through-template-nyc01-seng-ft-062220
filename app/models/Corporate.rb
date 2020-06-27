class Corporate
    attr_reader :gym_name, :person_name, :cost, :location

    @@all = []
    def initialize(gym_name, location, person_name, cost)
        @gym_name = gym_name
        @person_name = person_name
        @location = location
        @cost = cost
        @@all << self
    end

    def self.all
        @@all
    end

end
