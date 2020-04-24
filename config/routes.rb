Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  # adds new, edit, create sub links automatically
  resources :posts do
    resources :comments
  end
end
