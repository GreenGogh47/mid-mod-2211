class FoodDataService

  def get_foods_by_ingredient(ingredient)
    get_url("search?ingredients=#{ingredient}")
  end
  
  def get_url(url)
    response = connection.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def connection
    Faraday.new(url: "https://api.nal.usda.gov/fdc/v1/foods") do |f|
      f.params["api_key"] = ENV["food_token"]
    end
  end
end