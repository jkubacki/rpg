Rails.application.routes.draw do
  resources :games do
    resources :posts
  end
  resources :campaigns do
    get :join
  end
  root to: 'visitors#index'
  devise_for :users
end
