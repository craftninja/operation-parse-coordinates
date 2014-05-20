require 'spec_helper'
require_relative '../../lib/list_directions'

describe ListDirections do

  before do
    @list_of_coordinates = [[0,0], [0,-1], [1,-1], [0,-1]]

    @directions = <<DIRECTIONS
started
moved south by 1
moved east by 1
moved west by 1
DIRECTIONS
  end

  it 'can get a list of coordinates and display directions' do
    list_directions = ListDirections.new(@list_of_coordinates)
    actual = list_directions.directions
    expected = @directions
    expect(actual).to eq(expected)
  end

end
