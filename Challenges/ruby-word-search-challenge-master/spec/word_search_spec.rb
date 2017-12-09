require_relative '../word_search'

describe 'straight_line_include?' do
    let(:puzzle) {[
        ["a", "k", "f", "o", "x", "e", "s"], 
        ["s", "o", "a", "w", "a", "h", "p"], 
        ["i", "t", "c", "k", "e", "t", "n"],
        ["o", "t", "s", "d", "h", "o", "h"],
        ["s", "e", "x", "g", "s", "t", "a"],
        ["u", "r", "p", "i", "w", "e", "u"],
        ["z", "s", "b", "n", "u", "i", "r"]
      ]}

    it "returns true if word is found" do
        expect(straight_line_include?("fo", puzzle)).to eq true
    end
end

describe 'snaking_include?' do
end
