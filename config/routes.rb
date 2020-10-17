Rails.application.routes.draw do

  # Main Page
  root 'posts#index', as: 'home'

  # Additional Pages
  get 'showall' => 'posts#showall', as: 'showall'
  get 'about' => 'pages#about', as: 'about'
  get 'signup' => 'pages#signup', as: 'signup'
  post 'users' => 'pages#users', as: 'users'

  # Resources
  resources :posts do
    resources :comments
  end

end
