require "pry"

class Owner
  
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end 

  def say_species 
    "I am a #{self.species}." 
  end 

  def self.all 
    @@all
  end 

  def self.count
    @@all.count
  end 

  def self.reset_all 
    @@all = []
  end


    #Cat.all #collections of all the cat objects
    # get those cats that belong to owner 
  def cats
    Cat.all.select do |cat| 
      cat.owner == self 
    end 
  end 

    # Laina.dogs 
    def dogs
      Dog.all.select do |dog|
        dog.owner == self
      end 
    end 

    # Nikki.sell_pets
    # get list of NIKKIS dogs and cats only (not all dod )
    # change dog mood to nervous, change cat mood to nervous
    #remove their owner 
    def sell_pets
      all_owner_pets = self.dogs + self.cats
      
      all_owner_pets.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end 

    end 

    # #Laina.walk_dogs, then all dogs' moods == "happy"
    def walk_dogs
      Dog.all.each do |dog|
       if dog.owner == self
        dog.mood = "happy"
       end
      end 
    end 

    # Laina.feed_cats
    def feed_cats
      Cat.all.each do |cat_instance|
        if cat_instance.owner == self
          cat_instance.mood = "happy"
        end
      end
    end
    

      #ideal code: Dad.buy_cat("Captain")
    #get Cat class 
    # makes new instance of that cat
    def buy_cat(name)
      Cat.new(name, self)
    end

    # ideal code JD.buy_dog("Senna")
    def buy_dog(name)
      Dog.new(name, self)
    end

    def list_pets
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end 
        
  
  
end