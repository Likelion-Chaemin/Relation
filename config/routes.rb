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

  post '/comments/create/:p_id' => 'comments#create'
  post '/comments/update/:c_id' => 'comments#update'
  post '/comments/realUpdate/:c_id' => 'comments#realUpdate'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
