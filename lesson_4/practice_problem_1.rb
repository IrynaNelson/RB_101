[1, 2, 3].select do |num|
  num > 5
  'hi'
  puts num
end
#select performs selection according to thuthiness of the block. The return value will be "hi". But select will return a new array with the original array.


