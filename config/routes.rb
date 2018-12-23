# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register', edit: 'settings' }
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

  root to: 'application#home'
  get '/home', to: 'application#home', as: 'home'
  get '/notebook', to: 'application#notebook', as: 'notebook'

  resource :notes, shallow: true
  resource :directories, shallow: true
  resource :files, shallow: true, only: [:show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
