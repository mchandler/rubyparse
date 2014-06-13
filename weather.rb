file = File.open("w_data.dat", "r");
days = Array.new
all_spreads = Array.new

file.each_line do |line|

  line_array = line.gsub(/\s+/, " ").strip.split(" ")

  if line_array[0].to_i > 0

    days.push line_array[0]
    all_spreads.push line_array[1].to_i - line_array[2].to_i
    
  end
end

file.close
puts "Day " + days[all_spreads.each_with_index.min.last]
