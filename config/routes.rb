Rails.application.routes.draw do
  root :to => "home#index"
  resources :messages

  get 'member/signup'
  get 'home/index'
  # get 'home/conversation'

  get 'space/message'
  post 'space/message' => 'space#message'
  get 'space/guest'
  post 'space/guest' => 'space#message'

  mount ActionCable.server => '/chat'
  
  post 'member/signup' => 'member#create'
  get 'member/login/:email' => 'member#login'

  get 'session/new'
  get 'login' => 'session#create'
  post '/login' => 'session#create'
  delete 'logout' => 'session#destroy'
  
  delete 'spacedelete' => 'space#destroy'

  get 'space/show'
  post 'space/show' => 'space#message'
  get 'space/new'
  post '/newspace' => 'space#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
