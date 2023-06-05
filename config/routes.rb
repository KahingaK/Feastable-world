Rails.application.routes.draw do
  Rails.application.routes.draw do
    # USERS
    resources :users, only: [:index, :update, :destroy]
  
    # POST /signup
    post "/signup", to: "users#create"
  
    # stay logged in
    get "/me", to: "users#show"
  
    # SESSIONS
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  
    # RECIPES
    resources :recipes, only: [:index, :show, :create, :update, :destroy]
  
    # REVIEWS
    resources :reviews, only: [:index, :show, :create, :update, :destroy]
  
    # TAGS
    resources :tags, only: [:index, :show, :create]
  
    # POST /recipe-tag
    post "/recipe-tag", to: "tags#recipe_tag"
  
  end
  
end
