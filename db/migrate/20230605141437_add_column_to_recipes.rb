class AddColumnToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_index :recipes, :user_id, name: "index_recipes_on_user_id"
  end
end
