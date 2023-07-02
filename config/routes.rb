Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

root :to =>"homes#top"

resources :users, only: [:show]
resources :diaries, only: [:new, :create, :destroy]

end
