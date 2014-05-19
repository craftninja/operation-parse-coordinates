class CoordinateParser

  def initialize(map)
    @map = map
  end

  def target_coordinates
    x = nil
    y = nil
    raw_array_map = @map.split("\n")
    raw_array_map.shift
    raw_array_map.pop
    raw_array_map.each_with_index do |map_line, y_index|
      x = map_line.index('X')
      y = y_index * -1
      break if x
    end
    [x-1,y]

  end
end
