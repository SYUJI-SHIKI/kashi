Rails.application.routes.draw do
  root 'okashies#index'
  get '/okashies/random', to: 'okashies#random'
end
