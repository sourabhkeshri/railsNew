Rails.application.routes.draw do
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  resources :users, only: [:new, :create]
  resources :articles
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'

   resources :article do
    resources :comment
  end

   root 'sessions#welcome'
end
