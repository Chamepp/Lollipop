Rails.application.routes.draw do

  # Main Page
  root 'posts#index', as: 'home'

  # Additional Pages
  get 'showall' => 'posts#showall', as: 'showall'
  get 'about' => 'pages#about', as: 'about'
  get 'signup' => 'user#signup', as: 'signup'
  post 'users' => 'users#makeuser'

  # Resources
  resources :posts

end
