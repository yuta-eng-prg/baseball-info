Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root 'messages#about'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :messages do

    resources :helpful_messages, only: [:create, :destroy]
    resources :comments, only: [:index, :create, :edit, :update, :destroy]
  end
  
end
