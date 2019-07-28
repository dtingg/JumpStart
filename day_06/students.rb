# Ada Jump Start Live - Day 6 Exercise

classes = {
  clusters: ["Ada", "Alma", "Lucia"],
  containers: ["Paula", "Devin", "Dee"]
}

classes[:clusters].each do |name|
  puts name
end

classes.each do |key, value|
  value.each do |student|
    puts "#{key} - #{student}"
  end
end
