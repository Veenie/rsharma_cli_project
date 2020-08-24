class RsharmaCliProject::CLI
  
  def call
    puts "Hello World!"
    list_books
    pick_title
  end
  
  def list_books
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
    book = @titles[selected - 1]
    puts "Here is the description for #{book.name}:"
    puts book.price
    bye
  end
  
  def bye
    sleep(2)
    puts "Thank you for using this program, goodbye!"
  end  
  
end