Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #get "*path" => redirect("/")
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root "pages#index"
  get '/contact', to:'page#contact'
  get '/schedule', to:'page#schedule'
  get '/franchising', to:'page#franchising'
  get '/about', to:'page#about'
  get '/become-a-trainer', to:'page#coachs'
  resources :services
  resources :shops
  resources :trainers
  resources :posts
  #mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

