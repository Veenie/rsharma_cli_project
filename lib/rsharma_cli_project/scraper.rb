class RsharmaCliProject::Scraper
  
  def self.scrape_titles
    site = "https://en.wikipedia.org/wiki/List_of_ThunderCats_(2011_TV_series)_episodes"
    doc = Nokogiri::HTML(open(site))
    title = doc.css("td.summary")
    title.each do |t|
      name = t.text
      RsharmaCliProject::Episode.new(name)
    end
    
  end  

  def self.scrape_descrip(episode)
    site = "https://en.wikipedia.org/wiki/List_of_ThunderCats_(2011_TV_series)_episodes"
    doc = Nokogiri::HTML(open(site))
    des = doc.css("td.description")
    des.each do |d|
      binding.pry
      d.text = array
    end
    array.each do |x|
      x = name
      episode.descriptions << name
    end  
  end  



end
