Rails.application.routes.draw do

  # Main Page
  root 'posts#index', as: 'home'

  # Additional Pages
  get 'about' => 'pages#about', as: 'about'
  

end
