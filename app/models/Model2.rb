require 'pry'
class Person 
    @@all=[]
    attr_reader :name, :age 
     def initialize(name, age)
        @name=name 
        @age=age 
        @@all << self 
     end 

     def self.all 
        @@all 
     end 

def subscribe(magazine_name, price)
Subscription.new(self, magazine_name, 50)
end


end
