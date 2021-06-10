['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  puts hash[value[0]] = value
end