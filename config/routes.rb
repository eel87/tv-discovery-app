Rails.application.routes.draw do
  get 'welcome/index'
  resources :shows
  
  root 'welcome#index'
end
