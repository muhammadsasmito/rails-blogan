Rails.application.routes.draw do
  resources :taggings
  resources :tags
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # untuk default nya membaca controller#method
  root to: 'posts#index'

  # jika kalau pake url
  get 'welcome', to: 'welcome#index'
  
end
