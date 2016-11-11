Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources  :streams do
    resources :comments
    resources :stream_tags, only:[:new, :create]
  end

  resources :tags, only: [:show]

end

