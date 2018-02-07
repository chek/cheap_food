Rails.application.routes.draw do

  get 'restaraunts', to: 'restaraunts#index'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get '/', to: 'pages#home'
  #root to: 'pages#home'rails 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
