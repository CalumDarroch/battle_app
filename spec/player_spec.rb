require 'player'

describe Player do
  subject(:conan) { Player.new("Conan")}

  describe "#name" do
    it "return the player's name" do
      expect(conan.name).to eq("Conan")
    end
  end
end
