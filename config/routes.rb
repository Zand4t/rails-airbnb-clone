Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources  :streams do
    resources :comments
  end

  resources :tags do
    resources :streams, controller: 'tag_streams'
  end

end

