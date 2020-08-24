class RsharmaCliProject::Scraper

  def self.scrape
   site = "https://www.imdb.com/title/tt0213338/episodes"
   doc = Nokogiri::HTML(open(site))
   episodes = doc.css("div.list_item")
   
   episodes.each do |x|
     name = x.css("strong").text
     des = x.css("div.item_description").text
     RsharmaCliProject::Episode.new(name, des)
   end
  end
end
