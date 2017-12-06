require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  it 'should return a word that starts with a vowel' do
    expect(convert_single_word('aney')).to eq('aney')
  end

  it 'should return pig latin' do
    expect(convert_single_word('jjea')).to eq("eajj")
  end
end

describe 'Converting a sentence to Pig Latin' do
  it 'should return each word in pig latin' do
    expect(convert_sentence_to_pig_latin("hey man")).to eq('eyh anm')
  end
end
