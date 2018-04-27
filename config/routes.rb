Rails.application.routes.draw do
  root :to => 'layouts#index'

  devise_for :users

  resources :blog_posts

  resources :contact, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
