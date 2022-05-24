Rails.application.routes.draw do
  authenticated :user do
    root to: 'groups#index', as: :authenticated_root
  end
  root to: 'home#index'

  
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :groups, only: [:index, :new, :create, :show]
end
