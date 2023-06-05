class ReviewsController < ApplicationController
      # Handle ActiveRecord Not Found exception
      rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
      # Handle ActiveRecord Unprocessable Entity -  raised when a record fails to save or validate in the database.
      rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
   
   
      # GET /reviews
      def index
          reviews = Review.all
          render json: reviews, status: :ok
      end
   
   
      # GET /reviews/:id
      def show
          review = find_review
          render json: review, status: :ok
      end
   
   
      # POST /reviews
      def create
          recipe = Recipe.find(params[:recipe_id])
          # review = recipe.reviews.new(review_params.merge(user_id: session[:user_id]))
          review = Review.new(review_params)
     
          if review.save
            render json: review, status: :created
          else
            render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
          end
      end
   
   
      # PUT/PATCH /reviews/:id
      def update
          review = Review.find(params[:id])
          user = User.find_by(id: session[:user_id])
          if review.user_id == user.id
            if review.update(review_params)
              render json: review, status: :ok
            else
              render json: { errors: review.errors.full_messages }, status: :unprocessable_entity
            end
          else
            render json: { errors: ["You are not authorized to Update this review"] }, status: :unauthorized
          end   
      end
   
   
      # DELETE /reviews/:id
      def destroy
          review = find_review
          user = User.find_by(id: session[:user_id])
          if review.user_id == user.id
            review.destroy
            head :no_content
          else
            render json: { error: "You are not authorized to Delete this review" }, status: :unauthorized
          end
      end
   
   
      private
   
   
      def find_review
          Review.find(params[:id])
      end
   
   
      def review_params
          params.permit(:rating, :comment, :user_id, :recipe_id)
      end
   
   
      def render_not_found_response
          render json: { error: "Review not found" }, status: :not_found
      end
   
   
      def render_unprocessable_entity_response(exception)
          render json: { error: exception.message }, status: :unprocessable_entity
      end
end
