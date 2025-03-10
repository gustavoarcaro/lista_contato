Rails.application.routes.draw do
  
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "static_pages#index"
  
  get 'sobre',    to: 'static_pages#sobre'
  get 'contato',  to: 'static_pages#contato'
  get 'entrar', to: 'sessions#new'
  get 'cadastro', to: 'users#new', as: 'cadastro'
  post 'entrar', to: 'sessions#create' 
  delete 'sair', to: 'sessions#destroy'
  
  resources :contacts
  resources :users, only: [:new, :create, :show, :edit, :update]
  
end
