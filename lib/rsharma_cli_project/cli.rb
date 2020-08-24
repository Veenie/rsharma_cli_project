class RsharmaCliProject::CLI
  
  def call
    puts "Hello World!"
    list_episodes
    pick_title
  end
  
  def list_episodes
    @titles = RsharmaCliProject::Episode.all
    puts "Put in the number of the book you'd like to see a description for!"
    @titles.each.with_index(1) do |title, index|
      puts "#{index}. #{title.name}"
    end
  end
  
  def pick_title
    selected = gets.strip.to_i
    if valid_entry(selected, @titles)
      show_description(selected)
    else puts "Please enter a valid number, returning to list."
      sleep(2)
      call
    end  
  end
  
  def valid_entry(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_description(selected)
    episode = @titles[selected - 1]
    puts "Here is the description for '#{episode.name}':"
    puts episode.description
    continue
  end
  
  def continue
    puts "\n Press any key to return to the list or press the x key to exit the program"
    selected = gets.strip
    if selected != "x"
      call
    else
      bye
    end
  end  
    
  
  def bye
    sleep(1)
    puts "\n Thank you for using this program, goodbye!"
  end  
  
end