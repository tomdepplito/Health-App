Health::Application.routes.draw do

  get "histories/index"
  get "histories/create"
  get "histories/edit"
  get "histories/update"
  get "histories/show"
  devise_for :users, controllers: { registrations: "registrations" }
  resources :histories

  root :to => 'histories#show'
end
