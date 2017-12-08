Rails.application.routes.draw do
  # User authentication paths
  devise_for :users

  get '/dashboard', to: 'dashboards#main'
  root 'pages#home'
end

