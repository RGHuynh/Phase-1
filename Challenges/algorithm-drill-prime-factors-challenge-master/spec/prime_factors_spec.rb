require_relative '../prime_factors'

describe 'prime_factors' do
  it "returns an array of prime factor" do
    expect(prime_factors(4)).to eq [2,2]
  end

end

