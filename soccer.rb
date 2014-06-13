file = File.open("soccer.dat", "r");
teams = Array.new
score_diff = Array.new

file.each_line do |line|

  line_array = line.gsub(/\s+/, " ").strip.split(" ")

  if line_array[0].to_i > 0

    teams.push line_array[1]
    score_diff.push (line_array[6].to_i - line_array[8].to_i).abs
    
  end
end

file.close
puts "Team: " + teams[score_diff.each_with_index.min.last]
