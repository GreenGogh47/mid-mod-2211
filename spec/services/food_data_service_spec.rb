require "rails_helper"

RSpec.describe FoodDataService do
  describe "instance methods" do
    describe "#get_foods_by_ingredient" do
      it "returns a list of foods that match the search query" do
        search = FoodDataService.new.get_foods_by_ingredient("potatoes")
        expect(search).to be_a(Hash)

        foods = search[:foods]
        expect(foods).to be_a(Array)

        expect(foods.first).to have_key(:gtinUpc)
        expect(foods.first[:gtinUpc]).to eq("859546004603")

        expect(foods.first).to have_key(:description)
        expect(foods.first[:description]).to eq("SARATOGA CHIPS, AMERICA'S FIRST KETTLE CHIP, ALL NATURAL RED, WHITE, AND BLUE POTATO CHIPS, OLD GLORIES, OLD GLORIES")

        expect(foods.first).to have_key(:brandOwner)
        expect(foods.first[:brandOwner]).to eq("Saratoga Chips LLC")

        expect(foods.first).to have_key(:ingredients)
        expect(foods.first[:ingredients]).to eq("POTATOES (WHITE POTATOES, BLUE ADIRONDACK POTATOES, RED ADIRONDACK POTATOES), SUNFLOWER OIL, HIMALAYAN SALT.")
      end
    end
  end
end