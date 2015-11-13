Rails.application.routes.draw do
  get 'pages/home'
  get 'geocerca', to: 'pages#geocerca', as: :geocerca
  get "coordinates", to: 'pages#coordinates'
  post '/polygons/create',:defaults =>{:format => 'js'}, to: 'pages#polygons', :as => :create_polygons

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  namespace :api do
    #/insertar?lat=33299869&lon=70989&idbici=30&estado=inside&h=700
    get "/insertar", :defaults =>{:format => 'json'}, to: "coordinates#insert", as: :insert
    get "/actual", :defaults =>{:format => 'json'}, to: "coordinates#actual", as: :actual
    get "/poligono", :defaults =>{:format => 'json'}, to: "coordinates#polygons", as: :polygons
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'pages#home'


  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
