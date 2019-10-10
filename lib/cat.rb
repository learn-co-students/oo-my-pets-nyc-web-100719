class Cat
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    self.class.all << self
  end

  def self.all
    @@all
  end

  def feed
    @mood = "happy"
  end

  def sell
    @mood = "nervous"
    @owner = nil
  end

end