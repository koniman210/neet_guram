Rails.application.routes.draw do
 
  devise_for :users
  root to: "home#index"
  resources :users
  resources :recipes do
    resource :likes, only: [:create,:destroy] 
  end
  resources :recipes do
    resources :reviews, only: [:index,:create]
  end
end
