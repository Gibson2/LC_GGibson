Rails.application.routes.draw do
  
  resources :posts do 
    collection do
      get 'all_posts'
    end    
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