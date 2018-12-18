Rails.application.routes.draw do
  get '/', to: 'page#index'
  get '/compile', to: 'compile#pdf'
  post '/compile', to: 'compile#compile'
end
