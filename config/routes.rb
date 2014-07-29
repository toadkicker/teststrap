Teststrap::Application.routes.draw do
  
  resources :widgets

  root :to => 'widgets#index'

end
