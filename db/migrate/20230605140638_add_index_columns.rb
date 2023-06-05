class AddIndexColumns < ActiveRecord::Migration[7.0]
  def change
    add_index :reviews, :recipe_id, name: "index_reviews_on_recipe_id"
    add_index :reviews, :user_id, name: "index_reviews_on_user_id"
  end
end
