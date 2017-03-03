require 'player'

describe Player do
  subject(:player) { described_class.new("Noora")}
    it 'initializes with player name' do
    expect(player.name).to eq("Noora")
  end
end
