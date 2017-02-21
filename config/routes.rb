Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :posts do
  	resources :commnents
  end
   #get 'posts/details/:id' => 'posts#details', as: 'details'
   #get 'post/details/:post_id/comments/:id' => 'comments#create', as: 'comments'
   # details post
  root 'posts#index'
end
