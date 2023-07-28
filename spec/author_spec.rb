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

  it 'jane_eyre exists as book' do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    # require 'pry' ; binding.pry
    expect(@jane_eyre).to be_a(Book)
    expect(@jane_eyre.title).to eq("Jane Eyre")
    expect(@charlotte_bronte.books).to include(@jane_eyre)
  end

  it 'villete exists as book' do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")
    # require 'pry' ; binding.pry
    expect(@villette).to be_a(Book)
    expect(@villette.title).to eq("Villette")
    expect(@charlotte_bronte.books).to include(@jane_eyre, @villette)
  end
end