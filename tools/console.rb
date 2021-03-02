# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

g1 = Gym.new("Planet Fitness")
g2 = Gym.new("Fitness Connection")
g3 = Gym.new("Golds Gym")

l1 = Lifter.new("Udenna", 150)
l2 = Lifter.new("Devante", 200)
l3 = Lifter.new("Mike", 400)

m1 = Membership.new(l1, g1, 25.00)
m2 = Membership.new(l1, g2, 10.00)
m3 = Membership.new(l3, g1, 40.00)
binding.pry
puts "Gains!"

binding.pry

puts "Gains!"
