Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :escapers

  root "escapes#index"
  resources :escapes do
    resources :reviews
  end





  #get 'home/index'
  #get "home", to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
