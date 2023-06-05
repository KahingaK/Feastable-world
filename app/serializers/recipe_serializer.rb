class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :ingredients, :image_url


  belongs_to :user
  has_many :reviews
  has_many :tags
end
