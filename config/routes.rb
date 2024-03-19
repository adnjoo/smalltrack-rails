Rails.application.routes.draw do
  get 'pages/about'
  root "articles#index"

  resources :articles do
    resources :comments
  end

  get 'about', to: 'pages#about'
end
