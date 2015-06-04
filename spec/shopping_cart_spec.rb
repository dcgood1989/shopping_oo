require "spec_helper"
require "shopping_cart"
require "item"

describe ShoppingCart do
	describe "initialize" do
		it "defaults to having no items" do
			shopping_cart = ShoppingCart.new
			expect(shopping_cart.items).to eq []
		end
	end

	describe "#add_item" do
		it "adds an item to the cart" do
			shopping_cart = ShoppingCart.new
			item = Item.new("iPhone", 400)
			shopping_cart.add_item(item)

			expect(shopping_cart.items).to eq [item]
		end
	end

	describe "#total_price" do
		it "returns the total price of all items in the cart" do
			shopping_cart = ShoppingCart.new
			shopping_cart.add_item(Item.new("iPhone", 400))
			shopping_cart.add_item(Item.new("MacBook", 1200))

			expect(shopping_cart.total_price).to eq 1600
		end
	end

	describe "#discount_price" do
		it "returns a discount price based of the percentage passed in" do
			shopping_cart = ShoppingCart.new
			shopping_cart.add_item(Item.new("iPod", 100))

			expect(shopping_cart.discount_price(10)).to eq 90
		end
	end

	describe "#remove_item" do
		it "removes an item from the cart based on the name" do
			shopping_cart = ShoppingCart.new
			shopping_cart.add_item(Item.new("iPod", 100))
			shopping_cart.remove_item("iPod")

			expect(shopping_cart.items).to eq []
		end
	end
end