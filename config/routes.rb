Rails.application.routes.draw do
 
  devise_for :users
  
  resources :articles
  resources :seminars
  root to: "home#index"
end
