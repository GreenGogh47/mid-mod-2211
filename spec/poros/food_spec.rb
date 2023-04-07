require "rails_helper"

RSpec.describe Food do
  before(:each) do
    first_item = {
      "fdcId": 1855808,
      "description": "SARATOGA CHIPS, AMERICA'S FIRST KETTLE CHIP, ALL NATURAL RED, WHITE, AND BLUE POTATO CHIPS, OLD GLORIES, OLD GLORIES",
      "dataType": "Branded",
      "gtinUpc": "859546004603",
      "publishedDate": "2021-07-29",
      "brandOwner": "Saratoga Chips LLC",
      "brandName": "SARATOGA CHIPS",
      "subbrandName": "AMERICA'S FIRST KETTLE CHIP",
      "ingredients": "POTATOES (WHITE POTATOES, BLUE ADIRONDACK POTATOES, RED ADIRONDACK POTATOES), SUNFLOWER OIL, HIMALAYAN SALT.",
      "marketCountry": "United States",
      "foodCategory": "Chips, Pretzels & Snacks",
      "modifiedDate": "2018-07-19",
      "dataSource": "LI",
      "packageWeight": "7 oz/198 g",
      "servingSizeUnit": "g",
      "servingSize": 28.0,
      "tradeChannels": [
          "NO_TRADE_CHANNEL"
      ]
    }

    @food = Food.new(first_item)
  end

  it "exists" do
    expect(@food).to be_a(Food)
    expect(@food.gtin_upc).to eq("859546004603")
    expect(@food.description).to eq("SARATOGA CHIPS, AMERICA'S FIRST KETTLE CHIP, ALL NATURAL RED, WHITE, AND BLUE POTATO CHIPS, OLD GLORIES, OLD GLORIES")
    expect(@food.brand_owner).to eq("Saratoga Chips LLC")
    expect(@food.ingredients).to eq("POTATOES (WHITE POTATOES, BLUE ADIRONDACK POTATOES, RED ADIRONDACK POTATOES), SUNFLOWER OIL, HIMALAYAN SALT.")
  end
end