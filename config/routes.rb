Rails.application.routes.draw do
  resources :widgets
  root to: "widgets#index"
end
