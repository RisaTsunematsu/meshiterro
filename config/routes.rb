Rails.application.routes.draw do

 devise_for :users
 root to:"homes#top"
 get "/homes/about" => "homes#about", as: "about"
 
 resources :post_images do
   resources :post_comments
   resource :favorites
 end
 
 resources :users

end
