# Add your code here
class Dog
  attr_reader :name
  @@all = []
  
  def self.save
    @@all << self
  end
  
  def initialize(name)
    @@all << self
    @name = name
    self.save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end
  
  
  def clear_all
    @@all.clear
  end
  
end