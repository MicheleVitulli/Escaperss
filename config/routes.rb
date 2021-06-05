Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: "users/registrations" }


  get '/users/reviews/:id', to: 'reviews#user_reviews', :as => :user_reviews

  root "escapes#index"
  resources :escapes do
    resources :reviews
  end

  get '/adm', to: 'admins#index', :as => :admin_view
  get '/adm/admin/:id', to: 'admins#admin_user', :via => :get, :as => :admin_admin_user
  get '/adm/unadmin/:id', to: 'admins#unadmin_user', :via => :get, :as => :admin_unadmin_user





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
