class Dog
  # code goes here
  @@all = []
  
  attr_reader :name, :mood, :owner
  
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
  
  def owner=(owner)
    @owner = owner
  end
end