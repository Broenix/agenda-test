Rails.application.routes.draw do
  get 'search/index'
  get 'tv_shows/index'
  get 'movies/index'
  get 'games/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :games, only: [:index]
  resources :movies, only: [:index]
  resources :tv_shows, only: [:index]
  get '/search', to: 'search#index'

end
