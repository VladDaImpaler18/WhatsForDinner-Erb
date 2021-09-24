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
    @meal = Meal.new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
