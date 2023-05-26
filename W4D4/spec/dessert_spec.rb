require "dessert"
require "drink"

describe "Dessert" do
  subject(:brownie) { Dessert.new("brownie", 50) }
  # let(:milk) { Drink.new("milk") } 
  let(:milk) { double("milk") }

  describe '#initialize' do
    it "take in a type" do
      expect(brownie.type).to eq('brownie')
    end

    it "take in an amount" do
      expect(brownie.amount).to eq(50)
    end

    context "with a huge amount" do
      subject(:brownie) { Dessert.new("brownie", 100000)}
      it "sets the type to the giant verision" do
        expect(brownie.type).to eq("giant brownie")
      end
    end

    it "raises an error if the amount is not a number" do
      expect { Dessert.new("brownies", "tons") }.to raise_error("Amount must be a number")
    end
  end

  describe "#eat" do
    it "calls #dip on the accompanying drink" do
      expect(milk). to receive(:dip).with(brownie)
      brownie.eat(milk)
    end
  end
end