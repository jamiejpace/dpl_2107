class Book
  attr_reader :title,
              :author,
              :publication_year

  def initialize(data)
    @title = data[:title]
    @author = "#{data[:author_first_name]} #{data[:author_last_name]}"
    @publication_year = data[:publication_date][-4..-1]
  end
end
