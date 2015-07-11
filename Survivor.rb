class Contestant
  attr_reader :name
  attr_accessor :immune

  def initialize(name)
    @name = name
  end

  def immune?
    @immune
  end
end

class Tribe
  attr_reader :name
  attr_accessor :members

  def initialize(name)
    @name = name
  end

end

def test_contestant
  name = "Tracy"
  c = Contestant.new(name)
  puts "Name is the expected value"
  p c.name == name
  puts "#immune? returns false by default"
  p c.immune? == false
  puts "#immune? returns true if immune = true"
  c.immune = true
  p c.immune? == true
end

def test_tribe
  tribe_name = "Red"
  t = Tribe.new(tribe_name)
  p t.name == tribe_name

  c1 = Contestant.new('Shelly')
  c2 = Contestant.new('Rilke')
  c3 = Contestant.new('Mallarmé')

  poets = [c1, c2 , c3]
  t.members = poets
  p t.members == poets
end

def test_game
  names = %w/
    Adam
    Alec
    Angel
    Chris
    Jeffrey
    Joann
    Juan
    Juvenal
    Mashon
    Pat
    Paul
    Ravi
    Robert
    Stevie
  /

  half = names.size / 2

  contestants = names.map { |name|
    Contestant.new(name)
  }

  contestants.shuffle!

  red = Tribe.new("Red")
  black = Tribe.new("Black")

  red.members = contestants.shift(half)
  black.members = contestants.shift(half)

  p red.members
  p black.members
end


test_contestant
test_tribe
test_game


# contestants.shuffle!
#
# green.members = contestants.shift(half)
# blue.members = contestants.shift(half)
#
