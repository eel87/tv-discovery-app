Rails.application.routes.draw do
  get 'welcome/index'
  resources :shows, only: [:index, :show]
  
  root 'welcome#index'
end
