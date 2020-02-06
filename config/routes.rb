Rails.application.routes.draw do
  resources :royalpasses
  get 'welcome/index'
  devise_for :users
  resources :table1s
    root "welcome#index"
 get 'about' => "table1s#about"
 get 'video' => "royalpasses#video"
  get 'gallery' => "table1s#gallery"
 get 'upsc' => "welcome#upsc"
  get 'trick' => "welcome#trick"
   get 'offers' => "welcome#offers"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
