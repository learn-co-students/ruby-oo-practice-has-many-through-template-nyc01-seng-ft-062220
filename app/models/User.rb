class User
    attr_reader :name
    @@all = []
    @@project_creator = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pledge
        Pledge.all.select {|id| id.user == self}
    end

    def self.highest_pledge
        @@all.max_by {|id| id.pledge.map{|id| id.amount}}
    end

    def self.multi_pledger
        @@all.select {|id| id.pledge.count > 1}
    end

    def create_project(title, pledge_goal)
        Project.new(title, pledge_goal)
        @@project_creator << self
    end

    def back_project(project,amount)
        Pledge.new(project, self, amount)
    end

    def self.project_creator
        @@project_creator
    end
    
end
