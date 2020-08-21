

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
    @titles.each_with_index do |title, index|
      puts "#{index + 1}. #{title}"
    end
  end
end  