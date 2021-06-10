flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index(flintstones.select {|word| word.start_with?('Be') }[0])



