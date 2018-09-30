Rails.application.routes.draw do





  root to: "services#index"

  resources :customers
  resources :bookings, only: [:index, :new, :create, :show]
  resources :services, only: [:index, :new, :create, :show] do
    post :book, to: 'bookings#create'
  end
  resources :service_providers

<<<<<<< HEAD
  resources :charges
=======
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'customers#new'
  post '/customers' => 'customers#create'
>>>>>>> master

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
