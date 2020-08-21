class RsharmaCliProject::Episode
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end  
  
  def self.all
    RsharmaCliProject::Scraper.scrape_titles if @@all.empty?
    @@all
  end
  
  
  
end 