Rails.application.routes.draw do
  resources :posts
  resources :games
  resources :campaigns do
    get :join
  end
  root to: 'visitors#index'
  devise_for :users
end
