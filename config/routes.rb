Rails.application.routes.draw do

  get '/' => 'homes#top'

  resources :recipes

  # post 'recipes'=>'recipes#create'
  # get 'recipes/new'
  # get 'recipes'=>'recipes#index'
  # get 'recipes/:id'=>'recipes#show', as: 'recipe'
  # get 'recipes/:id/edit'=>'recipes#edit', as: 'edit_recipe'
  # patch 'recipes/:id'=>'recipes#update', as: 'update_recipe'
  # delete 'recipes/:id'=>'recipes#destroy', as: 'destroy_recipe'




  # devise_for :customers
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  # devise_for :admins
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
