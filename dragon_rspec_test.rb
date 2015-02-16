require_relative 'dragon'
describe Dragon do
	$stdout = StringIO.new	
	
  	context "Ramoth gold lessa" do
	    before do
	      @dragon = Dragon.new("Ramoth", :gold, "Lessa")
	    end
	    
	    it "has a name" do
	    	expect(@dragon.name).to eq("Ramoth")
		end	

		it "has a rider" do
			expect(@dragon.rider).to eq("Lessa")
		end

		it "has a color" do
			expect(@dragon.color).to eq(:gold)
		end
    end

    it "is a different dragon" do 
    	dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    	expect(dragon.name).to eq("Mnementh")
    end

    it "has a different rider" do
    	dragon = Dragon.new("Mnementh", :bronze, "F'lar")
    	expect(dragon.rider).to eq("F'lar")
    end

    it "has a different color" do 
   		dragon = Dragon.new("Mnementh", :bronze, "F'lar")
   		expect(dragon.color).to eq(:bronze)
   	end

   	it "born hungry" do 
   		dragon = Dragon.new("Canth", :brown, "F'nor")
   		expect(dragon.hungry?).to eq(true)
   	end

   	it "eats a lot" do 
   		dragon = Dragon.new("Canth", :brown, "F'nor")
   		expect(dragon.hungry?).to eq(true)
   		dragon.eat
   		expect(dragon.hungry?).to eq(true)
		dragon.eat
		expect(dragon.hungry?).to eq(true)
		dragon.eat
		expect(dragon.hungry?).to eq(false)
	end

end
