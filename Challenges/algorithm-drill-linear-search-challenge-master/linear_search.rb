def linear_search(index, symbols)
    count = 0
    found_unit = 0
    until (found_unit == 1) | (count == (symbols.length - 1))
      if index == symbols[count]
        found_unit = 1
      else 
        count += 1
      end
    end
    if found_unit == 1
      p count
    else
      return nil
    end
  end

def global_linear_search(search_word, array)
    store_find = []
    count = 0

    until count == (array.length)
        if search_word == array[count]
            store_find << count
            count += 1
        else 
            count += 1
        end
    end
    store_find
end