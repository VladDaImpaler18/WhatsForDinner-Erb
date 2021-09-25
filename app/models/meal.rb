class Meal < ApplicationRecord
    extend Scrapers::FoodNetwork
    validates :title, presence: true
    validates :title, uniqueness: true
    validates_with MealsValidator, fields: [:instructions, :ingredients]

    #  title:sting, category:sting, area:sting, instructions:json image:binary, tags:json, ingredients:json, source:string
    
end