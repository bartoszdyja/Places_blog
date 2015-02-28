Rails.application.routes.draw do
  devise_for :users
  resources :places
  get '/test', to: 'places#test'
  root 'places#index'
end
