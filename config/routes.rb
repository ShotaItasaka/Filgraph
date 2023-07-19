Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :filmimage, only: [:new, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
