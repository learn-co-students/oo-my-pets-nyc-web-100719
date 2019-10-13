class Cat
  # code goes here
  @@all = []
  
  attr_accessor :owner
  attr_reader :name, :mood
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def mood=(mood)
    @mood = mood
  end
end