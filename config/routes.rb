Rails.application.routes.draw do
  devise_for :users
  resources :widgets
  root to: "widgets#index"
end
