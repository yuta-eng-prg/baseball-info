Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root 'messages#about'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :messages
  
end
