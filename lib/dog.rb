# Add your code here
class Dog
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @@all << self
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end
  
  def self.save
    @@all << self
  end
  
  def clear_all
    @@all.clear
  end
  
end