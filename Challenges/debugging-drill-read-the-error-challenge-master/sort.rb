# Rewrite this method with your own sorting algorithm
# Make your algorithm pass each of the tests in spec/sort_spec.rb

def is_interger?(n)
  if n.class != Integer
    return n.to_i
  end
  n
end


def sort_nil(objects)
  nil_count = objects.count(nil)
  objects.delete(nil)
  object_without_nil = objects.sort

  until nil_count == 0
    object_with_nil = object_without_nil.insert(0,nil)
    nil_count -= 1
  end
  return object_with_nil
end

def ordering_objects(o)

  object_count = o.length - 1
  counter = 0

  until start == object_count
    if is_interger(o[start]) > is_interger(o[start + 1])
      o.insert(start, o.delete_at(start + 1))
    end
    start += 1
  end 
end

def sort(objects)
  
  if objects.include?(nil) == true
    sort_nil(objects)
  else
    objects.sort
  end
end

# identify the integers from strings
# temporaly convert string to integer
# if the number before the integer is smaller move it to first place
#   do it till no more number is left
# i want to move the integer or the string into the correct order