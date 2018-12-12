Rails.application.routes.draw do
  get 'inquiries/index'=> 'inquiries#index'
  post 'inquiries/confirm', to: 'inquiries#confirm'
  post 'inquiries/complete', to: 'inquiries#complete'

  get "papers/login" => "papers#login_form"
  post "papers/login" => "papers#login"
  post "papers/logout" => "papers#logout"
  post "papers/:id/update" => "papers#update"
  get "papers/:id/edit" => "papers#edit"
  post "papers/create" => "papers#create"
  get "papers/signup" => "papers#new"
  get "papers/index" => "papers#index"
  get "papers/:id" => "papers#show"

  get "blogs/index" => "blogs#index"
  get "blogs/new" => "blogs#new"
  get "blogs/:id" => "blogs#show"
  post "blogs/create" => "blogs#create"
  get "blogs/:id/edit" => "blogs#edit"
  post "blogs/:id/update" => "blogs#update"
  post "blogs/:id/destroy" => "blogs#destroy"

  get "users/login" => "users#login_form"
  post "users/login" => "users#login"
  post "users/logout" => "users#logout"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "users/signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "/top" => "home#top"
  get "home/service" => "home#service"
  get "home/message" => "home#message"
  get "home/index" => "home#index"

end
