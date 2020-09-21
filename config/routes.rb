Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tops#index'
  get 'tweets', to: 'tweets#index'
  get 'tweets_new', to: 'tweets#new'
  get 'about', to:'tops#about'
  resources :tweets, only: [:index, :create, :destroy, :edit, :new] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:show,:edit] 
end

