Rails.application.routes.draw do
  devise_for :useraccounts
  root 'chats#index'
  get 'dms/:id' => 'dms#index'
  resources :chats, only: [:create, :destroy]
  resources :dms, only: [:create, :destroy]
end
