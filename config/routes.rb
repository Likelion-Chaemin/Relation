Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get 'posts/index'
  post 'posts/new'
  get '/posts/post/:post_id' => 'posts#post'

  post 'posts/create'
  post 'posts/update/:post_id' => 'posts#update'
  post 'posts/realUpdate/:post_id' => 'posts#realUpdate'
  post 'posts/destroy/:post_id' => 'posts#destroy'

  post '/comments/create/:post_id' => 'comments#create'
  post '/comments/update/:c_id' => 'comments#update'
  post '/comments/realUpdate/:c_id' => 'comments#realUpdate'

  post '/comments/destroy/:c_id' => 'comments#destroy'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
