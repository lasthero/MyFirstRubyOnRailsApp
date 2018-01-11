Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts, :path => "blogposts"
  get 'home/index'
  get ":title/p/:id" => "blog_posts#show", :id=> /[0-9]+/
  post "blogposts/comment" => "blog_posts#comment"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to=>'home#index'
end
