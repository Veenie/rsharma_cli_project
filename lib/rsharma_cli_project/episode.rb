class RsharmaCliProject::Episode
  @@all = []
  attr_accessor :name, :description
  
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
  
  def get_description
    RsharmaCliProject::Scraper.scrape_descrip(self) if description == nil
  end
  
  
end 