Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get 'careers' => 'pages#careers'
  get 'posts/films/new' => 'films#new'
  get 'posts/films/careers' => 'pages#careers'
  resources :posts do
    resources :films
  end
  resources :films do
    resources :posts
  end

end
