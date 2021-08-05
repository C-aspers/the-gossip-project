Rails.application.routes.draw do
 
  root "home#index"

  get 'home/', to: 'home#index'
  #get 'gossip/:id', to: 'gossip#index'
  resources :gossip, only:[:new, :create, :show, :edit, :update, :destroy]
  resources :user
  resources :city
  resources :sessions, only: [:new, :create, :destroy]
  resources :dashboard, only: [:index]
  #get 'welcome/:id', to: 'welcome#index'
  get 'contact/', to: 'contact#index'
  get 'team/', to: 'team#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
