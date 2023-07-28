require 'rspec'
require './lib/book'
require './lib/author'

describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exists with attributes' do
    expect(@charlotte_bronte).to be_a Author
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(@charlotte_bronte.books).to eq([])
  end

end