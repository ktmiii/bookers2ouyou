Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to =>"homes#top"
  devise_for :users

  get "search" => "searches#search"

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  get "home/about"=>"homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
