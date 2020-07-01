class Project
    attr_reader :title, :pledge_goal
    @@all = []

    def initialize(title, pledge_goal)
        @title = title
        @pledge_goal = pledge_goal
        @@all << self
    end

    def self.all
        @@all
    end

    def pledge
        Pledge.all.select {|id| id.project == self}
    end

    def self.above_goal
        @@all.select {|id| id.pledge.map{|id| id.amount}.sum > id.pledge_goal}
    end

    def self.no_pledge
        @@all.select {|id| id.pledge.count == 0}
    end

    def self.most_backers
        @@all.max_by {|id| id.pledge.count}
    end
    
end

