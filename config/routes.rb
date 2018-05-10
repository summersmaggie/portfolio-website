Rails.application.routes.draw do

  scope :module => 'buttercms' do
    get '/categories/:slug' => 'categories#show', :as => :buttercms_category
    get '/author/:slug' => 'authors#show', :as => :buttercms_author

    get '/blog/rss' => 'feeds#rss', :format => 'rss', :as => :buttercms_blog_rss
    get '/blog/atom' => 'feeds#atom', :format => 'atom', :as => :buttercms_blog_atom
    get '/blog/sitemap.xml' => 'feeds#sitemap', :format => 'xml', :as => :buttercms_blog_sitemap

    get '/blog(/page/:page)' => 'posts#index', :defaults => {:page => 1}, :as => :buttercms_blog
    get '/blog/:slug' => 'posts#show', :as => :buttercms_post
  end
  # namespace :admin do
  #   get '', to: 'dashboard#index', as: '/'
  # end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'layouts#index'

  devise_for :users

  resources :contacts, only: [:index]

  resources :work_samples

  resources :skills


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
