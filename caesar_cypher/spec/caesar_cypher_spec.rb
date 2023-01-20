require './lib/caesar_cypher'

describe 'caesar_cypher' do

    it "deciphers with a positive shift" do
      expect(caesar_cypher('E tu Brutus?', 5)).to eq('J yz Gwzyzx?')
    end

    it "deciphers with a negative shift" do
      expect(caesar_cypher('E tu Brutus?', -7)).to eq('X mn Uknmnl?')
    end

    it "deciphers with a values greater 26" do
      expect(caesar_cypher('E tu Brutus?', 67)).to eq('T ij Qgjijh?')
    end

    it "does only deciphers letters" do
      expect(caesar_cypher('E tu Brutus?', 67)).to eq('T ij Qgjijh?')
    end
  end