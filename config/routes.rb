Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'users/registrations'  
  }
  #resources :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  

  resources :posts do 
    collection do
      get 'all_posts'
    end    
    resources :comments, only: [:create, :show]
  end


  get 'welcome/index'
  get 'welcome/news'
  get 'welcome/help'
  get 'welcome/contact'
  get 'welcome/about'
  get 'welcome/service'

  root 'welcome#index'
  
end