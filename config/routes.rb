Rails.application.routes.draw do
  resources :portfolios
 

  get 'about', to: "pages#about"
  get 'pages', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
