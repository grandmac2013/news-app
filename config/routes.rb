Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :news
  resources :categories
  get '/all_news',  to: 'news#all_news', as: "all_news"
  root "news#index"
end
