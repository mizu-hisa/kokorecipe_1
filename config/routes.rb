Rails.application.routes.draw do

  # devise_for :customers
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }


  # devise_for :admins
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  # root to: 'homes/top' => 'homes#top'
  get '/top' => 'homes#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
