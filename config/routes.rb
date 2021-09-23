Rails.application.routes.draw do
  get 'meals/index' 
  get '/meals/:title' => "meals#show", as: 'meals_show'
  get '/import/discover' => "meals#discover", as: 'meals_discover'
  post '/import/:title' => "meals#import", as: 'meals_import'
  post '/meals/create' => "meals#create", as: 'meals_create'
  patch 'meals/update'
  delete 'meals/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
