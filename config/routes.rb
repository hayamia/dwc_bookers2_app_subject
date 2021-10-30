Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'
  
  resources :books
  post 'books/:id', to: 'books#create'
  resources :users, only: [:index, :show, :edit, :update]
  
end
