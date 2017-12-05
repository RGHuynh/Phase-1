# Rewrite this method with your own sorting algorithm
# Make your algorithm pass each of the tests in spec/sort_spec.rb

def is_integer?(n)
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


def result(object)
  results = []
  object.each do |x|
    bl = x.is_a? String
    results << bl
  end
  results.uniq.length == 1
end


def ordering_objects(o)
  o.sort do |x,y|
    is_integer?(x) <=> is_integer?(y)
  end
end


def sort(objects)
  if objects.include?(nil) == true
    sort_nil(objects)
  elsif result(objects) == true
    objects.sort
  else
    ordering_objects(objects)
  end
end

