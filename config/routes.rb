Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get '/secret_page', to: 'static_pages#secret_page'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
