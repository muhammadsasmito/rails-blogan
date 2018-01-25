Rails.application.routes.draw do
  devise_for :users
  resources :taggings
  resources :tags
  resources :categories
  resources :posts, defaults: {format: 'json'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # untuk default nya membaca controller#method
  root to: 'welcome#index'

  # jika kalau pake url
  get 'welcome', to: 'welcome#index'
  
end
