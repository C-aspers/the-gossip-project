Rails.application.routes.draw do
  get 'gossip/:id', to: 'gossip#index'
  get 'home/', to: 'home#index'
  get 'welcome/:id', to: 'welcome#index'
  get 'contact/', to: 'contact#index'
  get 'team/', to: 'team#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
