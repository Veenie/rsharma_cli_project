class RsharmaCliProject::Scraper
  
  @name = []
  @descrip = []
  
  def self.scrape
   site = "https://www.imdb.com/title/tt0213338/episodes"
   doc = Nokogiri::HTML(open(site))
   titles = doc.css("div.list_item")
   
   titles.each do |x|
     name = x.css("strong").text
     des = x.css("div.item_description").text
     RsharmaCliProject::Episode.new(name, des)
   end
  end
end
