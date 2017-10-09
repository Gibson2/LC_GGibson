Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/news'

  get 'welcome/contact'

  get 'welcome/service'

  root 'welcome#index'
end
