Rails.application.routes.draw do
  
  resources :posts do 
  	resources :comments, only: [:create, :show]
  end


  devise_for :users, controllers: {
    registrations: 'users/registrations'	
  }
  #resources :users

  get 'welcome/index'
  get 'welcome/news'
  get 'welcome/contact'
  get 'welcome/about'
  get 'welcome/service'

  root 'welcome#index'
  
end