Rails.application.routes.draw do
  # namespace :admin do
  #   get '', to: 'dashboard#index', as: '/'
  # end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'layouts#index'

  devise_for :users

  resources :posts

  resources :contacts, only: [:index]

  resources :work_samples

  resources :skills


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
