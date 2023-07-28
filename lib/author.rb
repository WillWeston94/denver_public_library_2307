require './lib/book'

class Author
    attr_reader :first_name,
                :last_name,
                :books

    def initialize(attributes)
      @first_name = attributes[:first_name]
      @last_name = attributes[:last_name]
      @books = []
    end

    def name
      "#{@first_name} #{@last_name}"
    end

    def write(title, publication_date)
      publication_year = extract_publication_year(publication_date)

      book = Book.new({
      author_first_name: first_name,
      author_last_name: last_name,
      title: title,
      publication_date: publication_date
      })

      @books << book
      book
    end

    def extract_publication_year(date)
      date.split(',').last.strip[-4..-1]
    end
end