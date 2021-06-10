flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! do |word|
  word[0, 3]
end
puts flintstones