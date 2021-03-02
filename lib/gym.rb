class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select {|obj| obj.gym == self}
  end

  def all_lifters
    all_memberships.map {|obj| obj.lifter}
  end

  def all_lifters_names
    all_lifters.map {|obj| obj.name}
  end

  def lift_total
    total = all_lifters.map {|obj| obj.lift_total}
    total.reduce(:+)
  end
end