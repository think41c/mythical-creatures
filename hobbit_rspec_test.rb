require_relative 'hobbit'

describe Hobbit do
    $stdout = StringIO.new

#def setup  (for minitest)
  #stuff here
#end
  
  it "has a name" do
    hobbit = Hobbit.new("Bilbo")
    expect(hobbit.name).to eq("Bilbo")
  end

  it "can be named something else" do
  	hobbit = Hobbit.new("Peregrin")
  	expect(hobbit.name).to eq("Peregrin")
  end

  it "is unadventurous" do
  	hobbit = Hobbit.new("Samwise")
  	expect(hobbit.disposition).to eq("homebody")
  end

  it "can have a different dispostion" do
  	hobbit = Hobbit.new("Frodo", "adventurous")
  	expect(hobbit.disposition).to eq("adventurous")
  end

  it "grows older when having a b'day" do
  	hobbit = Hobbit.new("Meriadoc")
  	expect(hobbit.age).to eq(0)
  	5.times do
  		hobbit.celebrate_birthday
  	end
  	expect(hobbit.age).to eq(5)
  end

  it "considered a child at 32" do
  	hobbit = Hobbit.new("Gerontius")
  	32.times do 
  		hobbit.celebrate_birthday
  	end
  	expect(hobbit.adult?).to eq(false)
  end

  it "comes of age at 32" do
  	hobbit = Hobbit.new("Otho")
  	33.times do
  		hobbit.celebrate_birthday
  	end
  	expect(hobbit.adult?).to eq(true)
  	hobbit.celebrate_birthday
  	expect(hobbit.adult?).to eq(true)
  end
end
