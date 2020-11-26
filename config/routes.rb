Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :memories, only: [:index, :show, :new, :create, :top] do #memories route
    resources :bookings, only: [:create, :index] #appending new action to memories
    resources :reviews, only: [:show, :index] #appending reviews to memories so that we can show reviews on memory page
    get 'search', on: :collection
  end

  resources :bookings, only: [:show, :update] do #separate route for bookings
    resources :reviews, only: [:new, :create] #appending only the creation of review to bookings
  end


  get '/dashboard', to: "dashboards#index" #separate route for dashboard view
  get '/my_memories' => "dashboards#my_memories", as: "my_memories"
end

