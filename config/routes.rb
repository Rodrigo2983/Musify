Rails.application.routes.draw do
  resources :playlists do
    resources :songs, only: [:create, :destroy] do
      member do 
        patch 'set_favorite', to:'songs#set_favorite'
      end
    end #ruta anidada para crear y borrar una ruta anidada
  
    end
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
