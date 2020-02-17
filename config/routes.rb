Rails.application.routes.draw do
  get 'todolists/new'

  get "top" => "homes#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post"todolists" => "todolists#create"

  get "todolists" => "todolists#index"

  get "todolists/:id" => "todolists#show", as: "todolist"
  # .../todolists/1 や .../todolists/3 に該当する

  #7章の始まり
  get "todolists/:id/edit" => "todolists#edit", as: "edit_todolist"

  patch "todolists/:id" => "todolists#update", as: "update_todolist"

  #9章の始まり
end
