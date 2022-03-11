Rails.application.routes.draw do
root 'articles#show'
  get 'about', to: 'pages#about'
  resources :articles
end
