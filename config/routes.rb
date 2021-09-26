Rails.application.routes.draw do
  resources :meals, only: [:create, :new, :show, :update, :destroy]
  get '/discover' => "meals#discover", as: 'meals_discover'

  # get 'meals/index' 
  # get '/meals/:title' => "meals#show", as: 'meals_show'
  post '/import/new' => "meals#import", as: 'meals_import'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
