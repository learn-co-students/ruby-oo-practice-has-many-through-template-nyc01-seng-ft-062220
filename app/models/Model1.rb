require 'pry'
class Magazine
    attr_reader :name
    @@all=[]
    def initialize(name)
@name=name
@@all << self
end

def self.all
    @@all 
end    

def all_persons
    Subscription.all.select {|mag| mag==self}
end

def older_customers 
Subscription.all.map
end

end
