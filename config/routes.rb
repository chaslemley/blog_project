Bloggy::Application.routes.draw do
  resources :tags

  resources :comments

  resources :blogs

  get "static_pages/test1"
  get "static_pages/test2"
  get "static_pages/test3"

  get "about_us" => "main#about_us", :as => :about_us
  get "contact_us" => "main#contact_us", :as => :contact_us
  get "terms_of_service" => "main#terms_of_service", :as => :tos
  get "our_team" => "main#our_team", :as => :our_team

  get "dashboard/sign_in" => "dashboard#sign_in", :as => :sign_in
  get "dashboard/following" => "dashboard#following", :as => :following


  get "company_vision" => "main#company_vision", :as => :vision

  get "yourposts" => "blogs#yourposts", :as => :yourposts
  #get "your-team => "main#our_team"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'dashboard#sign_in'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  #   get 'blogs/:id' => 'blogs#show'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
