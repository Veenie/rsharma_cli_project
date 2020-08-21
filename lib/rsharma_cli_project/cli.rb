

class CLI
  
  def call
    puts "Hello World!"
    titles
    list_titles
  end

  
  def titles
    @titles = ['A', 'B', 'C']
  end
  
  def list_titles
    puts "Put in the number of the episode you'd like to see a description for!"
    @titles.each.with_index(1) do |title, index|
      puts "#{index}. #{title}"
    end
  end
  
  def pick_title
  end  
  
end  