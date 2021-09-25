class MealsController < ApplicationController
  def index
  end

  def show
    title = params.require(:title).downcase
    @meal = Meal.find_by(:title=>title)
  end

  def discover
  end

  def import
    url = params.require(:url)
    data = Scrapers::FoodNetwork.grab(url)
    args={}
    Meal.new.attributes.symbolize_keys.each { |k,v| args[k]=data[k]}
    @meal = Meal.new(args) || Meal.new
    
  end

  def create
  end

  def update
  end

  def destroy
  end
end
