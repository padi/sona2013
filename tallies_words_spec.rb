require_relative 'tallies_words'

describe TalliesWords do
  describe ".execute" do
    it "should return a hash of words and their tally count" do
      expect(described_class.execute("word tally")).to eq({"word" => 1, "tally" => 1})
    end
  end
end

