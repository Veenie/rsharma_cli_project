class RsharmaCliProject
  
  def scrape_titles
    site = "https://en.wikipedia.org/wiki/List_of_ThunderCats_(2011_TV_series)_episodes"
    doc = Nokogiri::HTML(open(site))
  end  



end  