Rails.application.routes.draw do
  get 'menus/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'rooms#index'
  get "rooms/about" => "rooms#about"
  resources :rooms, only: [:new,:create] do
    collection do
      get :serach
      post :join
    end
    resources :menus, only: :index
  end
end
