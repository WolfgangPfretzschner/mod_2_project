Rails.application.routes.draw do
  resources :interests
  resources :cohorts
  get '/people/new_reg', to: 'people#new_reg', as:'register'
  post '/people/register', to: 'people#register'
  resources :people
  resources :sessions, only: %i[new create]
  # delete '/logout', to: 'sessions#destroy', as: 'logout'

  # resources :sessions, only: %i[new update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
