require "spec_helper"
require "item"

describe Item do
	describe "initialize" do
		it "initializes with a name and a price" do
			item = Item.new("Macbook", 1200)
			expect(item.name).to eq "Macbook"

			expect(item.price).to eq 1200
		end
	end

	it "can change names" do
		item = Item.new("Macbook", 1200)
		item.name = "Macbook Air"

		expect(item.name).to eq "Macbook Air"
	end

	it "can change prices" do
		item = Item.new("Macbook", 1200)
		item.price = 1300

		expect(item.price).to eq 1300
	end
end