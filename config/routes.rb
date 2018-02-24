Rails.application.routes.draw do
  get 'media/index'
  
  resources :trends
  
  root 'media#index'
end
