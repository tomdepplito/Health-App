Health::Application.routes.draw do

  get "medicines/index"
  get "medicines/new"
  get "medicines/create"
  get "histories/index"
  get "histories/create"
  get "histories/edit"
  get "histories/update"
  get "histories/show"
  get "histories/home"
  get "histories/wip"
  devise_for :users
  resources :histories
  resources :medicines

  root :to => 'histories#index'
  #root :to => 'histories#home'
end

