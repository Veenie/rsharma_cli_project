class RsharmaCliProject::Scraper
  
  
  def self.scrape
   site = "https://en.wikipedia.org/wiki/List_of_The_Big_O_episodes"
   doc = Nokogiri::HTML(open(site))
   episodes = doc.css("table.wikitable")
   episodes.each do |ep|
     name = ep.css("td.summary").text
     description = ep.css("td.description").text
     new = RsharmaCliProject::Episode.new(name, description)
     
    end 
  end
  
  
  
  
  
  
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
