def shuffle(array)
  random = Random.new
  last_number = (array.count - 1)
  random_last_number = last_number - 1
  
  if array.find {|x| x.class == Symbol}
    return array
  end
  
  for i in 1..(array.count-1)
    array[last_number], array[random.rand(random_last_number)] = array[random.rand(random_last_number)], array[last_number]
    last_number -= 1
  end
  
  array
end
