class Gym
    attr_reader :name, :location

    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def open_membership(person_name, cost)
        Corporate.new(self.name, self.location, person_name, cost)
    end

    def close_membership(person_name)
        Corporate.all.delete_if {|all| all.person_name == person_name}
    end

    def members
        list = Corporate.all.select {|all| all.location == self.location}
        list.map {|all| all.person_name}
    end

end
