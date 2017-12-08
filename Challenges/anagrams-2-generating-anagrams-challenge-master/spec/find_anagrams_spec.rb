require_relative '../find_anagrams'

describe 'find_anagrams' do
  let(:possible_anagrams) {(['nighthawks', 'caret', 'react', 'trace', 'otters'])}
  it 'returns any anagrams from the provided list' do
    possible_anagrams = ['nighthawks', 'caret', 'react', 'trace', 'otters']
    found_anagrams    = find_anagrams('crate', possible_anagrams)

    expect(found_anagrams).to match_array ['caret', 'react', 'trace']
  end

  it ' returns any angarams from the provided regardless of case sensitivity' do
    found_anagrams = find_anagrams('CRATE', possible_anagrams)
    expect(found_anagrams).to match_array ['caret', 'react', 'trace']
  end

  it 'returns empty when there is not match' do
    possible_anagrams_match = ['adfkj','eruwib','wkejrhj']
    found_anagrams = find_anagrams('crate', possible_anagrams_match)
    expect(found_anagrams).to eq "it's empty"
  end
end
