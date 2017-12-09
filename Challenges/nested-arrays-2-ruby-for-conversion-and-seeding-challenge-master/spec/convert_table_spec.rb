require_relative '../convert_table'

describe 'converting a roster from a nested array to a collection of hashes' do
    let(:table) {[
        ["first_name", "last_name", "city", "state"],
        ["Elisabeth", "Gardenar", "Toledo", "OH"],
        ["Jamaal", "Du", "Sylvania", "OH"],
        ["Kathlyn", "Lavoie", "Maumee", "OH"]
      ]}
    

    it 'returns a key of first name' do
        expect(convert_table(table)['first_name']).to eq ["Elisabeth", "Jamaal", "Kathlyn"]
    end
end
