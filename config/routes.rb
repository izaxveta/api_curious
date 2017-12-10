Rails.application.routes.draw do
  # For details on the DSL available within this file, see http:   //guides.rubyonrails.org/routing.html
  root 'landing#index'

  get '/auth/github', as: 'login'
  get '/auth/github/callback', to: 'sessions#create'

  get '/dashboard', to: 'git_hub_users#show'
  get '/:login/repos', to: 'repositories#index'

end