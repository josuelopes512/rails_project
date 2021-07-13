Rails.application.routes.draw do
  resources :mining_types
  resources :testes
  # get 'welcome/index'
  resources :coins # é a mesma coisa de get '/coins', to 'coins#index'

  root to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
