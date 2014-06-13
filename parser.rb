class Parser
  
  def initialize(file)
    @file = file
  end
  
  def parse(key_index, eval1, eval2)
	content = File.open(@file, "r")
	all_keys = Array.new
	all_diffs = Array.new
	
	content.each_line do |line|
	  line_array = line.gsub(/\s+/, " ").strip.split(" ")
	  
	  if line_array[0].to_i > 0
	    all_keys.push line_array[key_index]
		all_diffs.push (line_array[eval1].to_i - line_array[eval2].to_i).abs
	  end
	end
	
	all_keys[all_diffs.each_with_index.min.last]
  end
end

weather = Parser.new("w_data.dat")
puts "Weather = Day: " + weather.parse(0, 1, 2)

soccer = Parser.new("soccer.dat")
puts "Soccer = Team: " + soccer.parse(1, 6, 8)