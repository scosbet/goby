require_relative '../../../lib/Event/NPC/npc.rb'

RSpec.describe NPC do

  context "constructor" do
    it "has the correct default parameters" do
      npc = NPC.new
      expect(npc.name).to eq "NPC"
      expect(npc.command).to eq "talk"
      expect(npc.mode).to eq 0
      expect(npc.visible).to eq true
    end

    it "correctly assigns custom parameters" do
      john = NPC.new(name: "John",
                     mode: 1,
                     visible: false)
      expect(john.name).to eq "John"
      expect(john.command).to eq "talk" # Always talk command.
      expect(john.mode).to eq 1
      expect(john.visible).to eq false
    end
  end

end
