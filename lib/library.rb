class Library
  attr_reader :name,
              :authors,
              :checked_out_books

  def initialize(name)
    @name = name
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
  end

  def books
    @authors.map do |author|
      author.books
    end.flatten
  end

  def publication_time_frame_for(author)
    publication_years = {}
    years = author.books.map do |book|
              book.publication_year
            end.sort
    publication_years[:start] = years.first
    publication_years[:end] = years.last
    publication_years
  end

  def checkout(book)
    can_checkout = books.any? do |available_book|
      available_book == book && !@checked_out_books.include?(book)
    end
    if can_checkout
      @checked_out_books << book
      book.times_checked_out += 1
      true
    else
      false
    end
  end

  def return(book)
    checked_out_books.delete(book)
  end

  def most_popular_book
    books.max_by do |book|
      book.times_checked_out
    end
  end

end
