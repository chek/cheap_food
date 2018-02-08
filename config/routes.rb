Rails.application.routes.draw do

  get 'restaraunts/:id', to: 'restaraunts#show'
  get 'restaraunts', to: 'restaraunts#index'
  post 'restaraunts', to: 'restaraunts#create'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact', as: 'feedback'

  get '/', to: 'pages#home'
  #root to: 'pages#home'rails 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
