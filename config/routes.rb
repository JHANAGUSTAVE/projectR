Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do 
    get 'things', to: 'things#index'
  end
  # resources :articles, only: [:edit, :update, :show, :destory,:index, :new, :create]
  # resources :users
  # resources :listings, only: [:edit, :update, :show, :destory]

  # get 'login', to: 'sessions#new'
  # post 'login', to: 'sessions#create'
  # root 'sessions#welcome'
  # get 'authorized', to: 'sessions#page_requires_login'
end
