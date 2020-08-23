class RsharmaCliProject::Book
  @@all = []
  attr_accessor :name, :price
  
  def self.scrape
    doc = Nokogiri::HTML(open("http://books.toscrape.com/catalogue/category/books/travel_2/index.html"))

    book = self.new
    book.name = doc.search("h2.main-title").text.strip
    book.price = doc.search("#todays-book span.price").text.strip
    

    @@all << book
  end
  

  def save
    @@all << self
  end  
  
  def self.all
    @@all
  end
  
  # def get_description
  #   RsharmaCliProject::Scraper.scrape_descrip(self)
  # end
  
  
end 