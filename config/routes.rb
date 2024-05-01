Rails.application.routes.draw do
  root 'okashies#home'
  resources :okashies, only: [:index]
end
