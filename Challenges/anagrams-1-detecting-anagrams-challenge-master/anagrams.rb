def anagrams?(word, word2)
    anagram_canonical_form(word) == anagram_canonical_form(word2)
    # word1 = word.split('')
    # word2 = word2.split('')
    # result = []

    # if word1.length == word2.length
    #     word1.each do |w|
    #     result << word2 .include?(w)
    # end
    # else 
    #     return false
    # end

    # if result.uniq.length == 1
    #     return true
    # else
    #     false
    # end
end

def anagram_canonical_form(word)
    word.upcase.split('').sort.join
end