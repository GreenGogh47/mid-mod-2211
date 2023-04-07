require "rails_helper"

RSpec.describe FoodDataService do
  describe "instance methods" do
    describe "#search" do
      it "returns a list of foods that match the search query" do
        search = FoodDataService.new.search("sweet potatoes")

        expect(search).to be_a(Array)
        expect(search.count).to eq(10)
        expect(search.first).to be_a(Hash)
        expect(search.first).to have_key(:gtinUpc)
        expect(search.first).to have_key(:description)
        expect(search.first).to have_key(:brandOwner)
        expect(search.first).to have_key(:ingredients)
      end
    end
  end
end