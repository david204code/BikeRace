Rails.application.routes.draw do
  
  root 'page#home'

  get '/home', to: 'page#home'
  get '/photo', to: 'page#photo'
  get '/location', to: 'page#location'

  resources :contests
  resources :riders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
