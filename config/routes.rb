Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources  :streams do
    resources :comments
  end


  resources :owners do
    resources :streams, controller: 'owner_streams'
  end


  resources :tags do
    resources :streams, controller: 'tag_streams'
  end

end

