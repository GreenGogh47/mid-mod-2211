class FoodDataFacade
  attr_reader

  def initialize
    @service = service
  end

  def foods_by_ingredient(ingredient)
    foods = @service.get_foods_by_ingredient(ingredient)
    foods.map do |food|
      Food.new(food)
    end
  end


  private

  def service
    @service ||= FoodDataService.new
  end
end