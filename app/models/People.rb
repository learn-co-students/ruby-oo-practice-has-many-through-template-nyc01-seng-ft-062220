class People
    attr_reader :person, :date_of_birth

    @@all = []
    def initialize(person, date_of_birth)
        @person = person
        @date_of_birth = date_of_birth
        @@all << self
    end

    def self.all
        @@all
    end

    def sign_up(gym_name, location, cost)
        Corporate.new(gym_name, location, self, cost)
    end

    def cancel_membership
        Corporate.all.delete_if{|all| all.person_name == self.person}
    end

end
