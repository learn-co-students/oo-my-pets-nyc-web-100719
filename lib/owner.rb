require 'pry'

class Owner
  attr_reader :name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    
  end 

  def species
    "human"
  end 

  def say_species
    p "I am a human."
  end 

  def self.all
    @@all
  end 

  def self.count
    @@all.count
  end 

  def self.reset_all
    @@all.clear
  end

  def cats 
    kitties = Cat.all
    kitties.select do |cat|
      cat.owner == self 
    end 
  end 

  def dogs 
    doggies = Dog.all
    doggies.select do |dog|
      dog.owner == self 
    end 
  end 

  def buy_cat(cat_name)
    Cat.new(cat_name, self )
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self )
  end

  def walk_dogs
    #binding.pry
    Dog.all.map do |dog|
      dog.mood = "happy"
    end 
  end 

  def feed_cats
    #binding.pry
    Cat.all.map do |cat|
      cat.mood = "happy"
    end 
  end 

  def sell_pets
    Dog.all.map do |dog|
      dog.owner = nil
      dog.mood = "nervous"
    end 
    Cat.all.map do |cat|
      cat.owner = nil
      cat.mood = "nervous"
    end 
    Dog.all.clear
    Cat.all.clear
  end

  def list_pets
    #binding.pry
    p "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 



end