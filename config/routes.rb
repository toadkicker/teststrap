Rails.application.routes.draw do
  devise_for :users
  resources :widgets
  unless Rails.application.config.consider_all_requests_local
    get '*not_found', to: 'application#render_404'
  end
  root to: "widgets#index"

end
