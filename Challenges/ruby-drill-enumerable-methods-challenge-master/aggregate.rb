def sum(numbers, starting_value = 0)

  numbers.reduce(starting_value) do |value, number|
    value += number
  end
  
end

def hyphenate(words)
  hyphenated_words = ""

  words.each do |word|
    if hyphenated_words.empty?
      hyphenated_words += word
    else
      hyphenated_words += "-#{word}"
    end
  end

  hyphenated_words
end
