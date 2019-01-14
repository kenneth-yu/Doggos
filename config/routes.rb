Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/doggos', to:'doggo#index'

  get '/doggos/new', to:'doggo#new'

  post '/doggos', to:'doggo#create'

  get '/doggos/:id', to:'doggo#show', as: "doggo"

  get '/doggos/:id/edit', to: 'doggo#edit', as:"edit_doggos"

  patch '/doggos/:id', to: 'doggo#update'

  delete '/doggos/:id/delete', to: 'doggo#destroy', as:"delete_doggo"











end
