Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :memories, only: [:index, :show, :new, :create, :top] do #memories route
    resources :bookings, only: [:new] #appending new action to memories
    resources :reviews, only: [:show, :index] #appending reviews to memories so that we can show reviews on memory page
    get 'search', on: :collection
  end

  resources :bookings, only: [:new, :create, :show] do #separate route for bookings
    resources :reviews, only: [:new, :create] #appending only the creation of review to bookings
  end


  get '/dashboard', to: "dashboards#index" #separate route for dashboard view

end
