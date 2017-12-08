require_relative '../anagrams'

describe 'anagrams?' do
    it 'to check if two words are anigram' do
        expect(anagrams?('ab','ba')).to eq true
    end

    it 'to check if edge case works in anigram' do
        expect(anagrams?('MELON', 'lemon')).to eq true
    end
    it 'to check if non eglish works in anigram' do
        expect(anagrams?('abcde2', 'c2abed')).to eq true
    end
end
