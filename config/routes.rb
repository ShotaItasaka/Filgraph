Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  resources :filmimage, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
