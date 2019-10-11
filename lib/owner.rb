require 'pry'

class Owner
  # code goes here
  attr_reader :name, :species

  @@all = [ ]

  def initialize(name)
    @name = name
    @species = "human"

    @@all << self
  end

  def species
    @species
  end

  def say_species
    @say_species = "I am a human."
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
    cats_with_owner_list = Cat.all.select do |cat|
        cat.owner == self
    end
  end

  def dogs
    dogs_with_owner_list = Dog.all.select do |dog|
      dog.owner == self
    end 
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.map do |dog|
      dog.mood = "happy"
    end
    # binding.pry
  end

  def feed_cats
    Cat.all.map do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.map do |cat|
      cat.mood = "nervous"
    end
    Dog.all.map do |dog|
      dog.mood = "nervous"
    end

    Cat.all.map do |cat|
      cat.owner = nil
    end
    Dog.all.map do |dog|
      dog.owner = nil
    end
  end

  def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end