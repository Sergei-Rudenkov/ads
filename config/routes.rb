Ads::Application.routes.draw do
 resources :users
 resources :sessions, only: [:new, :create, :destroy]
 root to:  "static_page#home"
 match '/signup',  to: 'users#new'

end
