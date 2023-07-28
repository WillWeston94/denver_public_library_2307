require 'rspec'
require './lib/book'

describe Book do
  before :each do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  it 'exists with attributes' do
    expect(@book).to be_a Book
    expect(@book.title).to eq("To Kill a Mockingbird")
    # expect(@book.author).to eq "07306"
    # expect(@book.publication_date).to eq "00000"
  end
end