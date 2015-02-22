Rails.application.routes.draw do
  resources :places
  get '/test', to: 'places#index'
  root 'places#index'
end
