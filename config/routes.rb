Rails.application.routes.draw do
resources :users do
  get 'playlists', to: 'playlists#find',  as: 'find'
end
  resources :playlists do

        resources :songs
      end

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
