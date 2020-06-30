require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


person1=Person.new("Yuli", 19)
person2=Person.new("vasi", 20) 
magazine1=Magazine.new("life")

subscriprion1=Subscription.new(person1, magazine1, 50)
magazine1.all_persons 
person2.subscribe(magazine1, 50)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
