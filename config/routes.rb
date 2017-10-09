Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/news'

  get 'welcome/contact'

  get 'welcome/service'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
