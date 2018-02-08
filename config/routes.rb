Rails.application.routes.draw do

  devise_for :accounts
#ajax
  get 'ajax/index'
  get 'ajax/data'
  post 'ajax/data'
#blogs

  get 'blogs/index'
  get 'blogs', to: "blogs#index"
  get 'blogs/:page', to: "blogs#index"

  get 'blogs/genre/:id', to: "blogs#genre"
  get 'blogs/genre/:id/:page', to: "blogs#genre"

  get 'blogs/show/:id', to: "blogs#show"

  get 'blogs/:id', to: "blogs#show"

#bloconfigs
  get 'blogconfigs/index'
  get 'blogconfigs/edit'
  resources :blogconfigs


#bloggenres
  get 'bloggenres/index'
  get 'bloggenres/add'
  post 'bloggenres/add'
  get 'bloggenres/edit'

  get "bloggenres/edit/:id", to: "bloggenres#edit"
  patch 'bloggenres/edit/:id', to: 'bloggenres#edit'
  resources :bloggenres

#blogposts
  get 'blogposts/add'
  post 'blogposts/add'
  get 'blogposts/edit'
  get 'blogposts/delete'

  get "blogposts/edit/:id", to: "blogposts#edit"
  patch 'blogposts/edit/:id', to: 'blogposts#edit'

  get "blogposts/delete/:id", to: "blogposts#delete"
  post 'blogposts/delete/:id', to: 'blogposts#delete'

  resources :blogposts


 #テスト用









  get 'cards/index'
  get 'cards', to: "cards#index"

  get 'cards/show'

  get 'cards/add'
  post 'cards/add', to: "cards#create"

  get 'cards/edit'
  get 'people/index'

  post "cards/add", to: "cards#update"
  get "cards/edit/:id", to: "cards#edit"
  patch "cards/edit/:id", to: "cards#update"

  get "cards/delete/:id", to: "cards#delete"

  get 'cards/:id', to: "cards#show"

  get 'dengonban/index'

  get "helo/index"
  get 'helo', to: "helo#index"
  get "helo/other"
  post "helo/index"
  post 'helo', to: "helo#index"

  get "helo/login_check"

  get 'dengonban', to: "dengonban#index"
  post 'dengonban', to: "dengonban#index"
  get "dengonban/index"
  post "dengonban/index"

  get 'people', to: "people#index"
  post 'people', to: "people#index"
  get "people/index"
  post "people/index"

  get "people/find"
  post "people/find"


  get "people/add"
  post 'people/add', to: "people#create"

  get "people/edit/:id", to: "people#edit"
  patch "people/edit/:id", to: "people#update"

  get "people/delete/:id", to: "people#delete"

  get 'people/:id', to: "people#show"

 #ここからmessage系

  get 'messages/index'
  get 'messages', to: 'messages#index'

  get 'messages/add'
  post 'messages/add', to: 'messages#create'

  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'

  get 'messages/delete/:id', to: 'messages#delete'
  get 'messages/:id', to: "messages#show"

end
