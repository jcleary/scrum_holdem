Rails.application.routes.draw do
  root to: 'players#new'
  resources :games
  resources :players
  resources :votes
end
