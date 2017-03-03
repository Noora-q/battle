require 'player'

describe Player do
  subject(:noora) { described_class.new("Noora", 65)}
  subject(:nick) { described_class.new("Nick", 65)}
  let(:damage){ Player::DEFAULT_DAMAGE }

  describe "#name" do
    it 'initializes with player name' do
      expect(noora.name).to eq("Noora")
    end
  end

  describe "#receive_damage" do
    it "reduces players hp by default damage" do
      expect {noora.receive_damage}.to change {noora.hp}.by(- damage)
    end
  end

end
