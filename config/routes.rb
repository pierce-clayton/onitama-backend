Rails.application.routes.draw do
  resources :user_games
  resources :blue_games
  resources :red_games
  resources :moves
  resources :cards
  resources :pieces
  resources :games do
    resources :moves    
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
