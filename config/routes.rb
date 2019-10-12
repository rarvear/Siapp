Rails.application.routes.draw do
  devise_for :users
  resources :bloggers
  get 'pages/home'
  post 'pages/formin'
  get 'pages/blog'
  get 'pages/showsall'
  get 'pages/postblog'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
