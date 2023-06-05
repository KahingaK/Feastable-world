class Tag < ApplicationRecord
    has_many :recipe_tags
    has_many :recipes, through: :recipe_tags
 
    # Validations
    validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
end
