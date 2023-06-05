class User < ApplicationRecord
    has_many :recipes
    has_many :reviews
 
    # Helper method to encrypt password
    has_secure_password
 
    # Validations
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP} # checks if the email attribute of a model matches a valid email format
    validates :username, presence: true, uniqueness: true
    validates :password, length: { minimum: 6}, if: -> {new_record? || !password.nil?}
    validates :gender,presence: true
end
