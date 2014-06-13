file = File.open("w_data.dat", "r");
day = 0
max_spread = 0

file.each_line do |line|

  line_array = line.gsub(/\s+/, " ").strip.split(" ")

  if line_array[0].to_i > 0

    test_day = line_array[0].to_i
    spread = line_array[1].to_i - line_array[2].to_i
    
    if spread > max_spread
      day = test_day
      max_spread = spread
    end
    
  end
end

file.close
puts "Day " + day.to_s
