Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
  get '/' => 'welcome#home'

end
