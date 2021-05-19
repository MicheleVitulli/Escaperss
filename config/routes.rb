Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  
  resources :escapes




  #get 'home/index'
  #get "home", to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
