require "rails_helper"

RSpec.describe "food show page" do
  before(:each) do
    visit root_path
    fill_in :q, with: "potatoes"
    click_on "Search"
  end

  describe "as a visitor" do
    it "shows a list of 10 foods that contain the ingredient" do
      expect(page).to have_content("10 Results")

      expect(page).to_have_content("GTIN/UPC code: 859546004603")
      expect(page).to_have_content("Description: SARATOGA CHIPS, AMERICA'S FIRST KETTLE CHIP, ALL NATURAL RED, WHITE, AND BLUE POTATO CHIPS, OLD GLORIES, OLD GLORIES")
      expect(page).to_have_content("Brand Owner: Saratoga Chips LLC")
      expect(page).to_have_content("Ingredients: POTATOES (WHITE POTATOES, BLUE ADIRONDACK POTATOES, RED ADIRONDACK POTATOES), SUNFLOWER OIL, HIMALAYAN SALT.")
    end
  end
end