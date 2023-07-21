Rails.application.routes.draw do
  resources :users
  resources :genres
  resources :platforms

  # resources :involved_companies
  resources :games do
    # /games/:id/add_genre
    post "add_genre", on: :member
    # /games/:id/remove_genre
    delete "remove_genre", on: :member

    # /games/:id/add_platform
    post "add_platform", on: :member
    # /games/:id/remove_platform
    delete "remove_platform", on: :member

    post "add_developer", on: :member
    delete "remove_developer", on: :member

    post "add_publisher", on: :member
    delete "remove_publisher", on: :member

    resources :critics
  end
  resources :companies do
    resources :critics
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "games#index"
end
