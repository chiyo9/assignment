Rails.application.routes.draw do
  
  get 'sessions/new'

  root 'static_pages#home'
  
  get 'users/new'

  get 'static_pages/home'

  get 'static_pages/category'
  
  get 'static_pages/locations'
  
  get 'static_pages/media'

  get  '/signup',  to: 'users#new'
  
  post '/signup',  to: 'users#create'
  
  get    '/login',   to: 'sessions#new'
   
  post   '/login',   to: 'sessions#create'
  
  delete '/logout',  to: 'sessions#destroy'
  
    get  '/browseallcourses',  to: 'static_pages#course'

 
  resources :users
  
end
