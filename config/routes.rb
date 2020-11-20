Rails.application.routes.draw do
  root to: 'prefs#index'
  resources :prefs
end
