class Pledge
    attr_accessor :project, :user, :amount
    @@all = []
    
    def initialize(project, user, amount=nil)
        @project= project
        @user = user
        @amount = amount
        @@all << self
    end

    def self.all
        @@all
    end

    def back_up_project=(project,user, amount)
        @project = project
        @user = user
        @amount = amount
    end

end
