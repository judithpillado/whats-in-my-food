class FoodsController < ApplicationController
  def index
    food_type = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov")

    response = conn.get("fdc/v1/foods/search?api_key=#{ENV["FOODS_API_KEY"]}&query=#{food_type}&pageSize=10")

    json = JSON.parse(response.body, symbolize_names: true)

    @foods = json[:foods].map do |food|
      Food.new(food)
    end 
  end
end
