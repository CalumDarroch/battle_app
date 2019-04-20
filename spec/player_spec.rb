require 'player'

describe Player do

  describe "#name" do
    it "return the player's name" do
      player = Player.new
      expect(player.name).to eq("Conan")
    end
  end
end
