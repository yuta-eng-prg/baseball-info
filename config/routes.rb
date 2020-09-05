Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root 'messages#index'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
end
