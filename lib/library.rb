class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
    @books.flatten!
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
end
