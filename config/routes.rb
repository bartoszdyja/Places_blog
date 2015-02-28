Rails.application.routes.draw do
  resources :places
  get '/test', to: 'places#test'
  root 'places#index'
end
