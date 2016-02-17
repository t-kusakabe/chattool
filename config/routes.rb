Rails.application.routes.draw do
  devise_for :useraccounts
  resources :useraccounts, only: [:show, :edit, :update]
  root 'chats#index'
  get '/:id' => 'chats#index'
  get 'dms/:id' => 'dms#index'
  resources :chats, only: [:create, :destroy]
  resources :dms, only: [:create, :destroy]
  resources :groups, only: [:new, :create, :destroy]
end
