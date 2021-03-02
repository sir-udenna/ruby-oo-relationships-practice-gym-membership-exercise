class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def memberships
    Membership.all.select {|obj| obj.lifter == self}
    # Get a list of all the memberships that a specific lifter has
  end
  def gym
    memberships.map {|obj| obj.gym}
    # - Get a list of all the gyms that a specific lifter has
    # memberships to
  end
  def average
    average = Lifter.all.map {|obj| obj.lift_total}
    average.reduce(:+) / average.count
  end
  def total_cost
    total_cost = memberships.map {|obj| obj.cost}
    total_cost.reduce(:+)
    # Get the total cost of a specific lifter's gym memberships
  end
  def sign_up(gym, cost)
    Membership.new(self, gym, cost)
    # - Given a gym and a membership cost, sign a specific lifter up for a new gym
  end
  def self.all
    @@all
  end
end