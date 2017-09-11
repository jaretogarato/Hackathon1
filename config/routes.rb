Rails.application.routes.draw do

  # root 'users#index'
  root to: 'posts#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :posts do
    resources :comments
  end
  
  resources :users do
    resources :posts
    resources :comments
    resources :bios
    resources :accounts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
