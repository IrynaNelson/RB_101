{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    puts value
  end
end