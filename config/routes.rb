Rails.application.routes.draw do
  get '/', to: 'page#index'
  post '/compile', to: 'compile#compile'
end
