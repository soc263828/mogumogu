Rails.application.routes.draw do

devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

 namespace :admin do
    root to: 'homes#top'
    resources :comments
    resources :users
    get 'recipes/index' => 'recipes#index',as: 'recipes'
    get 'recipes/new' => 'recipes#new',as: 'recipes_new'
    post 'recipes/create' => 'recipes#create',as: 'recipes_create'
    resources :recipes, only: [:show, :update, :destroy]
    resources :homes
  end

  scope module: :public do
    root to: 'homes#top'
    get 'homes/about' => 'homes#about'
   resources :users do
      resource :follows, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
      resource :bookmarks, only: [:create, :destroy]
      resources :comments, only: [:create]
      resources :recipes
   member do
      get :followings
      get :followers
      get :favorites
      get :bookmarks
    end
  end
 resources :comments, only: [:destroy]

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
