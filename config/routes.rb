Rails.application.routes.draw do
  devise_for :users
  resources :places do
  	member do
  		put "like", to: 'places#upvote'
  		put "dislike", to: 'places#downvote'
  	end
  end

  root 'places#index'
end
