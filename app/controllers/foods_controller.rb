class FoodsController < ApplicationController
	def index
		@foods = facade.foods_by_ingredient(params[:q]).first(10)
	end
	
	private

	def facade
		@facade ||= FoodDataFacade.new
	end
end