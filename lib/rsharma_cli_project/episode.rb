class RsharmaCliProject::Episode
  @@all = []
  attr_reader :name, :description
  
  def initialize(name, description)
    @name = name
    @description = description
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