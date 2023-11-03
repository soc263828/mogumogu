Rails.application.routes.draw do

 namespace :admin do
    root to: 'homes#top'
    resources :comment
    resources :user
    resources :recipe
    resources :homes
  end

  scope module: :public do
    root to: 'homes#top'
    resources :users, only: [:show] do
    resource :follows, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    resource :bookmarks, only: [:create, :destroy]
    resources :comments, only: [:create]
   member do
    get :followings
    get :followers
    get :favorites
    get :bookmarks
  end
end
resources :comments, only: [:destroy]

  end

devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
