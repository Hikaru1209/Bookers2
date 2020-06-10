Rails.application.routes.draw do
  root "homes#top"
  devise_for :users
  resource :home, only: [:show]
  get "home/about" => "homes#show", as: "homes_about"
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
