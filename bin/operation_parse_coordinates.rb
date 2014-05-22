require_relative '../lib/coordinate_parser'
require_relative '../lib/list_directions'

maps = []
coordinates = []
data_path = File.expand_path('../../data/*.txt', __FILE__)
files = Dir[data_path]

files.each do |file|
  maps << File.read(file)
end

maps.each do |map|
  coordinates << CoordinateParser.new(map).target_coordinates
end

puts ListDirections.new(coordinates).directions
