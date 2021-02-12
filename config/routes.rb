Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
end
