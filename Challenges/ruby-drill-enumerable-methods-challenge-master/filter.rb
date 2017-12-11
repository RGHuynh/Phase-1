def odd_integers(numbers)
  odds = []

  if (numbers.length - 1) == 1
    return numbers
  end

  until numbers.find{|n| n%2 != 0} == nil
    numbers.find do |n| 
      odds << n if n%2 != 0 
      numbers.delete(n)
    end
  end
  
  odds
end

def long_strings(strings, minimum_length)
  if (strings.length - 1) == 1
    return strings
  end

  strings.select do |string|
    string.length >= minimum_length
  end
end

def multiples_of(possible_multiples, number)
  possible_multiples.map do |possible_multiple|
    if possible_multiple % number == 0
      possible_multiple
    end   
  end - [nil]
end
