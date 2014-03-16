Health::Application.routes.draw do

  get "histories/index"
  get "histories/create"
  get "histories/edit"
  get "histories/update"
  get "histories/show"
  get "histories/home"
  devise_for :users
  resources :histories

  root :to => 'histories#index'
  #root :to => 'histories#home'
end

