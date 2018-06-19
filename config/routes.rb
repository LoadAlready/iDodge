Rails.application.routes.draw do
  resources :welcomes
  resources :properties
  resources :champion_properties
  resources :champion_teams
  resources :attributes
  resources :users
  resources :categories
  resources :teams
  resources :champions

  root :to => 'welcomes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
