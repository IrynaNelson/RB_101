statement = "The Flintstones Rock"
statement.downcase!
hash = {}

statement.split("").each do |letter|
  if hash[letter] == nil
    counter = 0
    statement.split("").each do |sub_letter|
      if letter == sub_letter 
        counter += 1
      end
    end
    hash[letter] = counter
    p hash
  end
end


# statement.downcase!
# freqs = {}
# freqs.default = 0

#  statement.each_char { |char| freqs[char] += 1}
# # (“a”..“z”).each {|x| puts “#{x} : #{freqs[x]}” } 



  #loop over the string.
  #For each loop (letter) check if that letter in already in the hash. 
  #if not insteaciate a counter var = 0
  #and start a new loop iterating over the string. 
  #In each loop check to see if the letter = the letter in the outer loop. 
  #If it does, add one to the counter. 
  #After looping after each add the letter to the hash and the value is the counter.
#statement = @str.each_char.reduce(@letters) { |h, c| h[c] += 1; h}
