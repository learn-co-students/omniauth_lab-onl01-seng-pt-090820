Rails.application.routes.draw do
  root 'welcome#home'
  post '/', to: 'sessions#logout', as: "logout"
  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
