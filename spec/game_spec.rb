require 'game'

describe Game do

  subject(:game) { Game.new("Noora", "Nick") }
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe "#attack" do
    it "reduce Player 2's HP on attack" do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
