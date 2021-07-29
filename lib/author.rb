class Author
  attr_reader :name,
              :books

  def initialize(data)
    @name = "#{data[:first_name]} #{data[:last_name]}"
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @books =[]
  end

  def write(book, year)
    book_hash = {}
    book_hash[:author_first_name] = @first_name
    book_hash[:author_last_name] = @last_name
    book_hash[:title] = book
    book_hash[:publication_date] = year
    new_book = Book.new(book_hash)
    @books << new_book
    new_book
  end

end
