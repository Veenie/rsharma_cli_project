class RsharmaCliProject::CLI
  
  def call
    puts "Welcome to the Cowboy Bebop episode guide!"
    list_episodes
    pick_title
  end
  
  def list_episodes
    @all = RsharmaCliProject::Episode.all
    puts "\nPut in the number of the episode you'd like to see a description for!"
    @all.each.with_index(1) do |title, index|
      puts "#{index}. #{title.name}"
    end
  end
  
  def pick_title
    selected = gets.strip.to_i
    if valid_entry(selected, @titles)
      show_description(selected)
    else puts "\nYou did not enter a valid number."
      continue
    end  
  end
  
  def valid_entry(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def show_description(selected)
    episode = @all[selected - 1]
    puts "\nHere is the description for '#{episode.name}':"
    puts episode.description
    continue
  end
  
  def continue
    puts "\nEnter any input to return to the list. Input a lowercase 'x' to exit the program"
    selected = gets.strip
    if selected != "x"
      call
    else
      bye
    end
  end  
    
  
  def bye
    sleep(1)
    puts "\nThank you for using this program, see you space cowboy!"
  end
  
end