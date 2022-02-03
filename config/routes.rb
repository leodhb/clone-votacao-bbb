# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'polls#index'
  post '/vote' => 'polls#vote', as: :vote
  post '/ranking' => 'polls#ranking', as: :ranking
end
