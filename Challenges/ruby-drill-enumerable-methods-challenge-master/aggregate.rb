def sum(numbers, starting_value = 0)

  numbers.reduce(starting_value) do |value, number|
    value += number
  end

end

def hyphenate(words)

  words.reduce(String.new) do |string, word|
    if string.empty?
      string += "#{word}"
    else
      string += "-#{word}"
    end
  end

end
