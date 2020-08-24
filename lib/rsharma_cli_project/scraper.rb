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
