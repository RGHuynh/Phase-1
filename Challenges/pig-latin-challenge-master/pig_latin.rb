# Your code here

def convert_single_word(word)
  vowels = 'aeiou'.split(//)
  split_word = word.split(//)

  if vowels.include?(split_word[0])
    return word
  else
    split_word.sort {|a| 
      if vowels.include?(a)
        -1
      else
        1
      end
      }.join
  end
end

def convert_sentence_to_pig_latin(array)
  new_array = array.split(" ")
  convert_to_string = []
  new_array.each {|x| convert_to_string << convert_single_word(x)}
  convert_to_string.join(' ')
end

