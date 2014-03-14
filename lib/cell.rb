class Cell
attr_reader :x, :y

  def initialize (x, y)
    @x = x
    @y = y
    @state = false
  end

  def Cell.create (x, y)
    new_cell = Cell.new(x, y)
  end

  def Cell.checks_state
    if @cell = false
      false
    else
      true
    end
  end

  def checks
    @checks = [[cell-51], [cell-50], [cell-49], [cell-1], [cell+1], [cell+49], [cell+50], [cell+51]]
  end

  def state
    spaces.each_with_index do |cell, index|
      counter = 0
      if cell = false
        @checks.each do |cell|
          if cell = true
            counter += 1
          end
          if counter = 3
            cell = true
          end
        end
      else
        @checks.each do |cell|
          if cell = true
            counter += 1
          end
          if counter < 2
            cell = false
          elsif counter >= 2 && <= 3
            cell = true
          else
            cell = false
          end
        end
      end
    end
    cell
  end
end
