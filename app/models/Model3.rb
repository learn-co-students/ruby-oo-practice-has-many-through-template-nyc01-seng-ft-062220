require 'pry'
class Subscription 
    attr_accessor :person_name, :price , :magazine_name
    @@all=[]

    def initialize(person_name, magazine_name, price)
  @person_name=person_name 
  @price=price 
  @magazine_name=magazine_name
  @@all << self 
    end


    def self.all 
        @@all 
    end 

end
