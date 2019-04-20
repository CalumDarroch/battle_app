require 'player'

describe Player do
  subject(:conan) { Player.new("Conan") }
  subject(:dutch) { Player.new("Dutch") }

  describe "#name" do
    it "return the player's name" do
      expect(conan.name).to eq("Conan")
    end
  end

  describe "#hp" do
    it "returns the player's hp" do
      expect(conan.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe "#attack" do
    it "inflicts damage on the other player" do
      expect(dutch).to receive(:wound)
      conan.attack(dutch)
    end
  end

  describe "#wound" do
    it "reduces the player's hit points" do
      expect { dutch.wound }.to change { dutch.hp }.by(-10)
    end
  end


end
