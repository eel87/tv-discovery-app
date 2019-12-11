Rails.application.routes.draw do
  resources :shows
  
  root 'welcome#index'
end
