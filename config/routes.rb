Rails.application.routes.draw do
  devise_for :users
  resources :records
  resources :activities
  get 'home/index'
  #root 'home#index'
  root 'records#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
