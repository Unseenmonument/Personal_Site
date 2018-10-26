Rails.application.routes.draw do
  
  root 'homepages#home'
#  root 'user#index'

  get 'user/index'

  get 'user/new'

  get 'user/edit'

  get 'user/show'

  get 'user/delete'

  devise_for :users
  

  resources :homepages
  resources :helps
  resources :fans
  resources :codeworks
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
