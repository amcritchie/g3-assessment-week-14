Rails.application.routes.draw do
  root "dashboard#index"

  # resource :session, only: [:new, :create, :destroy]
  resource :patients
  resource :medications
  resource :users
  resource :prescriptions


  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
end
