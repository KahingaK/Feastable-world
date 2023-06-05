class AddColumnToRecipeTags < ActiveRecord::Migration[7.0]
  def change
    add_index :recipe_tags, :recipe_id, name: "index_recipe_tags_on_recipe_id"
    add_index :recipe_tags, :tag_id, name: "index_recipe_tags_on_tag_id"
  end
end
