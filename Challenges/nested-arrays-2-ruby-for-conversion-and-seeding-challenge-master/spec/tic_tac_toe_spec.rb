require_relative '../tic_tac_toe'

describe 'generating a tic-tac-toe board' do
    let(:table){tic_tac_toe_board}
    it 'returns the length of three column' do
        expect(table[0].length).to eq 3
    end
    it 'returns the length of three rows' do
        expect(table.length).to eq 3
    end
    it 'returns either a X or O' do
        expect(table[0].any?{|x| x == "X" || x == "O"}).to eq true
    end

end
