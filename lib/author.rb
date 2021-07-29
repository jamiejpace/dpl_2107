class Author
  attr_reader :name,
              :books

  def initialize(data)
    @name = "#{data[:first_name]} #{data[:last_name]}"
    @books =[]
  end

  def write(book, year)
    book_hash = {}
    book_hash[:author_first_name] = @name.split(" ")[0]
    book_hash[:author_last_name] = @name.split(" ")[0]
    book_hash[:title] = book
    book_hash[:publication_date] = year
    new_book = Book.new(book_hash)
    @books << new_book
    new_book
  end

end
