require './parser'

weather = Parser.new("w_data.dat")
puts "Weather = Day: " + weather.parse(0, 1, 2)

soccer = Parser.new("soccer.dat")
puts "Soccer = Team: " + soccer.parse(1, 6, 8)