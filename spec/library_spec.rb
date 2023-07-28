require 'rspec'
require './lib/book'
require './lib/library'

describe Library do
  before :each do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @villette = @charlotte_bronte.write("Villette", "1853")
  end

  it 'exists with attributes' do
    expect(@dpl).to be_a Library
    expect(@dpl.name).to eq("Denver Public Library")
    expect(@dpl.books).to eq([])
    expect(@dpl.authors).to eq([])
  end

  # it 'exists with attributes' do
  #   expect(@dpl).to be_a Library
  #   expect(@dpl.name).to eq("Denver Public Library")
  #   expect(@dpl.books).to eq([])
  #   expect(@dpl.authors).to eq([])
  # end
end