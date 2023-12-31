Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/user", to: "courses#index", as: :user_root
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :courses, only: %i[index show] do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index destroy]
end
