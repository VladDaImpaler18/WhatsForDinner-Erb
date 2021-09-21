Rails.application.routes.draw do
  get 'meals/index'
  get 'meals/show'
  get 'meals/discover'
  get 'meals/import'
  get 'meals/create'
  get 'meals/update'
  get 'meals/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
