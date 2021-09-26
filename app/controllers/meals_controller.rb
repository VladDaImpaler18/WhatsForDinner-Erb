class MealsController < ApplicationController
  def index
  end

  def show
    # title = params.require(:title).downcase
    # @meal = Meal.find_by(:title=>title)
    binding.pry
  end

  def discover
  end

  def new
    @meal = Meal.new
  end

  def import
    url = params.require(:url)
    data = Scrapers::FoodNetwork.grab(url)
    args={}
    Meal.new.attributes.symbolize_keys.each { |k,v| args[k]=data[k]} #Shared, only the keys that Meals has will be copied over
    @meal = Meal.new(args)
    # redirect_to new_meal_path(meal)
    render 'meals/new'
  end

  def create
    meal = Meal.new(meal_params(:title,:category,:area,:source,:instructions => [],:tags => [],:ingredients => {}))
    if newMeal.save
      render json: newMeal
    else
      render json: newMeal.errors.messages
    end
  end

  def update
  end

  def destroy
  end
end
