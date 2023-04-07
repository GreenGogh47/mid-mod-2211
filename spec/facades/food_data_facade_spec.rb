require "rails_helper"

RSpec.describe FoodDataFacade do
  subject(:facade) { described_class.new}

  let(:foods) { facade.foods_by_ingredient("potatoes") }

  describe "instance methods" do
    context "#get_foods_by_ingredient" do
      it "returns a list of foods that include the ingredient param" do
        expect(foods).to be_a(Array)
        expect(foods.first).to be_a(Food)
        expect(foods.first.gtin_upc).to eq("859546004603")
      end
    end
  end
end