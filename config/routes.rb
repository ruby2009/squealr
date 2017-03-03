Rails.application.routes.draw do
  resources :squeals
  resources :users do
    resources :squeals, only: [:index]
end

post '/login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
