Rails.application.routes.draw do
  # For details on the DSL available within this file, see http:   //guides.rubyonrails.org/routing.html
  root 'landing#index'

  get    '/auth/github/callback', to: 'sessions#create'
  delete '/logout',               to: 'sessions#destroy'

  get '/dashboard', to: 'dashboard#show'
end