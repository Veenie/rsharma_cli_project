class RsharmaCliProject::Episode
  @@all = []
  attr_accessor :name, :descriptions
  
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
  
  def get_descriptions
    RsharmaCliProject::Scraper.scrape_descrip(self) if @descriptions.empty?
  end
  
  
  
end 