class RsharmaCliProject::Episode
  @@all = []
  attr_accessor :name, :description
  
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
  
  # def get_description
  #   RsharmaCliProject::Scraper.scrape_descrip(self)
  # end
  
  
end 