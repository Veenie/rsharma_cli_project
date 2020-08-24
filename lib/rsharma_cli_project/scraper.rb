class RsharmaCliProject::Scraper
  
  @name = []
  @descrip = []
  
  def self.scrape
   site = "http://books.toscrape.com/catalogue/category/books/travel_2/index.html"
   doc = Nokogiri::HTML(open(site))
   titles = doc.css("article.product_pod")
   
   titles.each do |x|
     name = x.css("a").text
     price = x.css("p.price_color").text
     RsharmaCliProject::Episode.new(name, price)
     
   end
  end
end   
   
   
   
  # titles.map do |t|
  #   name = t.text
  #   @name << name
     
  # end
  # des = doc.css("td.description")
  # des.each do |d|
  #   description = d.text
  #   @descrip << description
     
  #   end
  # end
  
  
  
  
  

  
  
  
  
  # def self.scrape
  #   site = "https://en.wikipedia.org/wiki/List_of_ThunderCats_(2011_TV_series)_episodes"
  #   doc = Nokogiri::HTML(open(site))
  #   title = doc.css("td.summary")
  #   title.each do |t|
  #     name = t.text
  #     binding.pry
  #   end
  #   des = doc.css("td.description")
  #   des.map do |d|
  #     description = d.text
  #   end
  #   new_ep = RsharmaCliProject::Episode.new(name, "description")
    
  # end

  # def self.scrape_descrip(episode)
  #   site = "https://en.wikipedia.org/wiki/List_of_ThunderCats_(2011_TV_series)_episodes"
  #   doc = Nokogiri::HTML(open(site))
  #   des = doc.css("td.description")
    
  #   des.map do |d|
  #     episode.description = d.text
   
  #   end  
      
  # end  



end
