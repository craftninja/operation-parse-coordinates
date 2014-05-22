class ListDirections

  def initialize(coordinates)
    @coordinates = coordinates
  end

  def directions
    directions = ''
    @coordinates.each_with_index do |coordinate, i|
      if i==0
        directions += "started\n"
      else
        x, y = '', ''
        x_movement = @coordinates[i-1][0] - coordinate[0]
        y_movement = @coordinates[i-1][1] - coordinate[1]
        y = "moved south by #{y_movement}\n" if y_movement > 0
        y = "moved north by #{y_movement * -1 }\n" if y_movement < 0
        x = "moved east by #{x_movement * -1}\n" if x_movement < 0
        x = "moved west by #{x_movement}\n" if x_movement > 0
        directions += y
        directions += x
      end

    end
    directions
  end

end
