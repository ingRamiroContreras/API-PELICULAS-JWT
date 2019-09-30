Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :movies
  get '/movies/fechacreacion/:fecha', to: 'movies#show_fechacreacion'

  resources :movies do
    resources :reservas
  end

  resources :reservas
  
  post 'authenticate', to: 'authentication#authenticate'

  resources :users
  
end
