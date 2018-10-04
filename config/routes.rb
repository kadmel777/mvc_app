Rails.application.routes.draw do
  resources :copies
  devise_for :admins
  resources :publications
  resources :authors
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
end
