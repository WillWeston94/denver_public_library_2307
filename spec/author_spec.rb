require 'rspec'
require './lib/book'
require './lib/author'

describe Author do
  before :each do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end