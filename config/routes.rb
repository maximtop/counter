Rails.application.routes.draw do
  get 'welcome/index'

  resources :transactions, :clients

  root 'welcome#index'
end
