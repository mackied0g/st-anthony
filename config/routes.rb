Rails.application.routes.draw do
  resources :locations
  resources :founds
  resources :lost_items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
