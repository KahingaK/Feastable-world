class Recipe < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_many :recipe_tags
    has_many :tags, through: :recipe_tags
  
  
    # Validations
    validates :title, presence: true
    validates :description, presence: true
    validates :ingredients, presence: true
    validates :image_url, format: { with: /\.(png|jpg|jpeg)\Z/i, message: "Must be a valid image format" }
end
