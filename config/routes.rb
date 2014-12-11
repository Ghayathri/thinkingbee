Rails.application.routes.draw do

  resources :calendar

  root 'calendar#index'

end