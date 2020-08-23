class RsharmaCliProject::Episode
  @@all = []
  attr_accessor :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
    save
  end


  def save
    @@all << self	    
  end


  def self.all
    RsharmaCliProject::Scraper.scrape if @@all.empty?	
    @@all
  end

  
  
end 