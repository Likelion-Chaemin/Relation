Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get 'posts/index'
  post 'posts/new'
  get '/posts/post/:p_id' => 'posts#post'

  post 'posts/create'
  post 'posts/update/:p_id' => 'posts#update'
  post 'posts/realUpdate/:p_id' => 'posts#realUpdate'
  post 'posts/destroy/:p_id' => 'posts#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
