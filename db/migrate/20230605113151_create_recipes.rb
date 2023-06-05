class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :ingredients
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
