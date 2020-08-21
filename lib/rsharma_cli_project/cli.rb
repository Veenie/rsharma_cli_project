

class RsharmaCliProject::CLI
  
  def call
    puts "Hello World!"
    titles
    list_titles
  end

  
  def titles
    RsharmaCliProject::Episode.new("fake")
    @titles = RsharmaCliProject::Episode.all
  end
  
  def list_titles
    puts "Put in the number of the episode you'd like to see a description for!"
    @titles.each.with_index(1) do |title, index|
      puts "#{index}. #{title.name}"
    end
  end
  
  def pick_title
    selected = gets.strip.to_i
    description(selected) if valid_entry(selected, @titles)
  end
  
  def valid_entry(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def description(selected)
    episode = @titles[selected - 1]
    puts "Here is the description for #{episode}"
    
    
  end  
    
  
end  