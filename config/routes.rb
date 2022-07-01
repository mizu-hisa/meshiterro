Rails.application.routes.draw do

  devise_for :users

  root to: "homes#top"

  get '/homes/about' => 'homes#about', as: 'about'

  resources :post_images, only: [:new, :index, :show]
  # resourcesで一括まとめる
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
end
