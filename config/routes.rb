Rails.application.routes.draw do
  devise_for :useraccounts
  resources :useraccounts, only: [:show]
  root 'chats#index'
  get 'dms/:id' => 'dms#index'
  resources :chats, only: [:create, :destroy]
  resources :dms, only: [:create, :destroy]
end
