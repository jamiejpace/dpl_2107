class Book
  attr_reader   :title,
                :first_name,
                :last_name,
                :publication_year

  attr_accessor :times_checked_out

  def initialize(data)
    @title = data[:title]
    @first_name = data[:author_first_name]
    @last_name = data[:author_last_name]
    @publication_year = data[:publication_date][-4..-1]
    @times_checked_out = 0
  end

  def author
    "#{@first_name} #{@last_name}"
  end
end
