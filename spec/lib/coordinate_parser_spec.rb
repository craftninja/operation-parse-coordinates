require 'spec_helper'
require_relative '../../lib/coordinate_parser.rb'
describe CoordinateParser do
  before do
    @text_map01 = <<TEXTMAP01
+==========+
|X*********|
|**********|
|**********|
|**********|
|**********|
+==========+
TEXTMAP01

    @text_map02 = <<TEXTMAP02
+======+
|******|
|******|
|*X****|
+======+
TEXTMAP02

    @text_map03 = <<TEXTMAP03
+===================================+
|***********************************|
|***********************************|
|***********************************|
|******X****************************|
|***********************************|
|***********************************|
|***********************************|
|***********************************|
+===================================+
TEXTMAP03
  end

  it 'can parse coordinates from a text map 01' do
    coordinate_parser = CoordinateParser.new(@text_map01)
    actual = coordinate_parser.target_coordinates
    expected = [0, 0]
    expect(actual).to eq(expected)
  end

  it 'can parse coordinates from a text map 02' do
    coordinate_parser = CoordinateParser.new(@text_map02)
    actual = coordinate_parser.target_coordinates
    expected = [1, -2]
    expect(actual).to eq(expected)
  end

  it 'can parse coordinates from a text map 03' do
    coordinate_parser = CoordinateParser.new(@text_map03)
    actual = coordinate_parser.target_coordinates
    expected = [6, -3]
    expect(actual).to eq(expected)
  end

end
