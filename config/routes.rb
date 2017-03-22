Rails.application.routes.draw do
  resources :squeals
  resources :users do
    resources :squeals, only: [:index]
end

root 'squeals#index'
post '/login' => 'sessions#create'
post '/users/:id/follow' => 'follows#follow_unfallow_toggle'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
