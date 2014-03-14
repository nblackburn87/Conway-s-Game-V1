require 'rspec'
require 'cell'

describe Cell do
  describe '#initialize' do
    it 'initializes an instance of cell with the coordinates x,y' do
    test_cell = Cell.new(1, 2)
    test_cell.should be_an_instance_of Cell
    end
  end

  describe '.create' do
    it 'creates a new cell when initialized' do
      test_cell = Cell.create(1, 2)
      test_cell.x.should eq 1
      test_cell.y.should eq 2
    end
  end

  describe '.checks_state' do
    it 'returns the state of a cell, true or false' do
      test_cell = Cell.create(1, 2)
      test_cell.checks_state.should eq false
    end
  end

  describe '#state' do
    it 'sets a cell to living or dead depending on its surroundings each cycle' do
      test_grid = Grid.create(50, 50)
      test_cell = Cell.create(1, 2)
      test_cell.checks.state.should eq false
    end
  end
end

