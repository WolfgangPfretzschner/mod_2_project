Rails.application.routes.draw do
  resources :interests
  resources :cohorts
  resources :people
  # resources :sessions, only: %i[new update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
