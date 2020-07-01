require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

u1 = User.new("Harry")
u2 = User.new("Steve")
u3 = User.new("YS")
u4 = User.new("James")
u5 = User.new("Jin")
u6 = User.new("Chin")
u7 = User.new("Eli")
u8 = User.new("Ash")

p1 = Project.new("Save Water", 500)
p2 = Project.new("My Birthday", 5000)
p3 = Project.new("COVID-19", 10000)

pl1 = Pledge.new(p1, u1, 100)
pl2 = Pledge.new(p1, u2, 10)
pl3 = Pledge.new(p2, u3, 20)
pl4 = Pledge.new(p2, u4, 330)
pl5 = Pledge.new(p2, u5, 1200)
pl6 = Pledge.new(p2, u6, 500)
pl7 = Pledge.new(p3, u7, 200)
pl8 = Pledge.new(p3, u8, 10000)
pl9 = Pledge.new(p3, u1, 50)
pl10 = Pledge.new(p3, u2, 700)
pl11 = Pledge.new(p3, u3, 900)
pl12 = Pledge.new(p3, u4, 200)
pl13 = Pledge.new(p3, u5, 10)

u8.create_project("Save Africa", 1000000)
u7.back_project(p3, 500)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
