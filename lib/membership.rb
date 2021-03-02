class Membership
  attr_accessor :lifter, :gym
  attr_reader :cost
  @@all = []
  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end
  def self.all
    @@all
  end
end