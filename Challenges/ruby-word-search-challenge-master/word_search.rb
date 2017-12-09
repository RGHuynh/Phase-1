def straight_line_include?(word, puzzle)
  split_word = word.split('')
  straight_line_check = []

  split_word.each do |w|
    straight_line_check << puzzle[0].index(w)
  end
  straight_line?(1, straight_line_check)
end

def straight_line?(increment, array)
  sorted = array.sort
  lastNum = sorted[0]
  sorted[1, sorted.count].each do |n|
    if lastNum + increment != n
      return false
    end 
      lastNum = n
  end
  true
end

def snaking_include?(word, puzzle)
end
