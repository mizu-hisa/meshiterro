Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"

  get '/homes/about' => 'homes#about', as: 'about'

  resources :users, only: [:show, :edit, :update]
  # resourcesで一括まとめる
  # get 'users/show'
  # get 'users/edit'

  resources :post_images, only: [:new, :index, :create, :show, :destroy] do
  # resourcesで一括まとめる
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
    resources :post_comments, only: [:create, :destroy]
  end


end
