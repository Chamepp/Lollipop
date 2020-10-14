Rails.application.routes.draw do

  # Main Page
  root 'posts#index', as: 'home'

  # Additional Pages
  get 'showall' => 'posts#showall', as: 'showall'
  get 'signup' => 'pages#signup', as: 'signup'
  get 'about' => 'pages#about', as: 'about'

  # Resources
  resources :posts

end
