class RecipesController < ApplicationController
     # Handle ActiveRecord Not Found exception
     rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 
 
     # Handle ActiveRecord Unprocessable Entity - raised when a record fails to save or validate in the database.
     rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
  
     # GET /recipes
     def index
         recipes = Recipe.all
         render json: recipes, status: :ok
     end
  
  
     # GET /recipes/:id
     def show
         recipe = find_recipe
         render json: recipe, status: :ok
     end
  
  
     # POST /recipes
     def create
         user = User.find_by(session[:user_id])
         if user
             recipe = user.recipes.create!(recipe_params)
             render json: recipe, status: :created
         else
             render json: { error: "Unauthorized. Log in to add a Recipe" }, status: :unauthorized
         end
     end
  
  
     # PATCH/PUT /recipes/:id
     def update
         user = User.find(session[:user_id])
         recipe = find_recipe
         if recipe.user_id == user.id
             recipe.update!(recipe_params)
             render json: recipe, status: :accepted
         else
             render json: { error: "Recipe not found" }, status: :not_found
         end
     end
  
  
     # DELETE /recipes/:id
     def destroy
         recipe = Recipe.find(params[:id])
         user = User.find_by(id: session[:user_id])
         if recipe.user_id == user.id
             recipe.destroy
             head :no_content
         else
             render json: { error: "You are not authorized to delete this recipe" }, status: :unauthorized
         end
     end
  
  
     private
  
  
     def find_recipe
         Recipe.find(params[:id])
     end
 
  
     def recipe_params
         params.permit(:title, :description, :ingredients, :image_url)
     end
  
  
     def render_not_found_response
         render json: { error: "Recipe not found" }, status: :not_found
     end
  
  
     def render_unprocessable_entity_response(exception)
         render json: { error: exception.message }, status: :unprocessable_entity
     end
  
end
