require_relative 'medusa'

describe Medusa do
    $stdout = StringIO.new

#def setup  (for minitest)
  #stuff here
#end

  before do
    @medusa = Medusa.new("Cassiopeia")
  end
  
  it "has a name" do
    expect(@medusa.name).to eq("Cassiopeia")
  end
  
  it "can stare" do
    expect(@medusa).to respond_to(:stare)
  end

  it "has statuses" do
    expect(@medusa).to respond_to(:statues)
  end

  it "has no statues when first created" do
    expect(@medusa.statues.empty?).to eq(true)
  end



  it "gains a statue when she stares at a person" do
    victim = Person.new("Perseus")
    @medusa.stare(victim)
    expect(@medusa.statues.count).to eq(1)
  end

  it "turns someone to stone when staring" do
    victim = Person.new("Perseus")
    expect(victim.stoned?).to eq(false)
    @medusa.stare(victim)
    expect(victim.stoned?).to eq(true)
  end
end
