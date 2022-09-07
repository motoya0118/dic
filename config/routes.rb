Rails.application.routes.draw do
  resources :blogs
  get 'users/show'
  devise_for :users
  resources :users, :only => [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/', to: 'tops#index'
end
