class Grid

  attr_reader :row, :column

  def initialize(row, column)
    @row = row
    @column = column
    @spaces = []

    (1..row).each do |x|
      (1..column).each do |y|
        @spaces << Cell.create(x, y)
      end
    end
  end

  def spaces
    @spaces
  end

  def Grid.create(row, column)
    new_grid = Grid.new(row, column)

  end


end


