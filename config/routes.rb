Rails.application.routes.draw do

  # Main Page
  root 'posts#index', as: 'home'

  # Additional Pages
  get 'show' => 'posts#show', as: 'show'
  get 'edit' => 'posts#edit', as: 'edit'
  get 'about' => 'pages#about', as: 'about'

  # Resources
  resources :posts

end
