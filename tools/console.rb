require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nysc1 = Gym.new("New York Sports Club", "Bayside")
nysc2 = Gym.new("New York Sports Club", "Sunnyside")
nysc3 = Gym.new("New York Sports Club", "Littl Neck")

p1 = People.new("Josh", "1993, June 21")
p2 = People.new("Kevin","1966, Feb 22")





nysc1.open_membership("Josh", 60)
nysc1.open_membership("Kevin", 65)
nysc1.open_membership("James", 30)
nysc2.open_membership("Sarah", 30)
nysc2.open_membership("Anne", 55)
nysc2.open_membership("Sean", 40)
nysc3.open_membership("Duke", 55)
nysc3.open_membership("Sue", 49)
nysc3.open_membership("Esther", 70)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
