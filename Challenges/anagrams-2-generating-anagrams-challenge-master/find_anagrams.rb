def find_anagrams(word, array)
    same_words_length = test_word_length(word, array)
    same_anagrams = []
    same_words_length.each do |w|
        if anagram_canonical_form(w) == anagram_canonical_form(word)
            same_anagrams << w
        end
    end
    if same_anagrams != []
        return same_anagrams
    else
        p "it's empty"
    end 
end
  
def anagram_canonical_form(word)
    word.downcase.split('').sort.join
end
  
def test_word_length(a, array)
    same_words_length = []
    array.each do |w|
        if w.length == a.length
            same_words_length << w
        end
    end
    same_words_length
end