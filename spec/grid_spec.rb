require 'rspec'
require 'Grid'

describe Grid do
  describe '#initialize' do
    it 'creates a new instance of a grid' do
      test_grid = Grid.new(50, 50)
      test_grid.should be_an_instance_of Grid
    end
  end

  describe 'Grid.create' do
    it 'creates a grid of the given size when initialized' do
      test_grid = Grid.new(50, 50)
      test_grid.spaces.length.should eq 2500
    end
  end
end


