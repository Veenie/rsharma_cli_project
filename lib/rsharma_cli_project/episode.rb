class RsharmaCliProject::Episode
  @@all = []
  attr_accessor :name
  attr_writer :descriptions
  
  def initialize(name)
    @name = name
    @descriptions = []
    save
  end
  
  def save
    @@all << self
  end  
  
  def self.all
    RsharmaCliProject::Scraper.scrape_titles if @@all.empty?
    @@all
  end
  
  def descriptions
    RsharmaCliProject::Scraper.scrape_descrip(self) if @descriptions.empty?
    @descriptions
  end
  
  
  
end 