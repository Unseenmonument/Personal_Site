Rails.application.routes.draw do
  
  devise_for :users
  root "homepages#home"

  resources :homepages
  resources :helps
  resources :fans
  resources :codeworks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
