Advsurf::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  match '/users/auth/:provider/callback' => 'authentications#create'
  match '/registrations' => 'registrations#email'
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :authentications

end