class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :title
      t.string :category
      t.string :area
      t.jsonb :instructions
      t.binary :image
      t.jsonb :tags
      t.jsonb :ingredients
      t.string :source

      t.timestamps
    end
  end
end
