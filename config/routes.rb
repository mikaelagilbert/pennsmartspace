# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#       buildings GET    /buildings(.:format)            buildings#index
#                 POST   /buildings(.:format)            buildings#create
#    new_building GET    /buildings/new(.:format)        buildings#new
#   edit_building GET    /buildings/:id/edit(.:format)   buildings#edit
#        building GET    /buildings/:id(.:format)        buildings#show
#                 PATCH  /buildings/:id(.:format)        buildings#update
#                 PUT    /buildings/:id(.:format)        buildings#update
#                 DELETE /buildings/:id(.:format)        buildings#destroy
#           rooms GET    /rooms(.:format)                rooms#index
#                 POST   /rooms(.:format)                rooms#create
#        new_room GET    /rooms/new(.:format)            rooms#new
#       edit_room GET    /rooms/:id/edit(.:format)       rooms#edit
#            room GET    /rooms/:id(.:format)            rooms#show
#                 PATCH  /rooms/:id(.:format)            rooms#update
#                 PUT    /rooms/:id(.:format)            rooms#update
#                 DELETE /rooms/:id(.:format)            rooms#destroy
#     study_spots GET    /study_spots(.:format)          study_spots#index
#                 POST   /study_spots(.:format)          study_spots#create
#  new_study_spot GET    /study_spots/new(.:format)      study_spots#new
# edit_study_spot GET    /study_spots/:id/edit(.:format) study_spots#edit
#      study_spot GET    /study_spots/:id(.:format)      study_spots#show
#                 PATCH  /study_spots/:id(.:format)      study_spots#update
#                 PUT    /study_spots/:id(.:format)      study_spots#update
#                 DELETE /study_spots/:id(.:format)      study_spots#destroy
#           users GET    /users(.:format)                users#index
#                 POST   /users(.:format)                users#create
#        new_user GET    /users/new(.:format)            users#new
#       edit_user GET    /users/:id/edit(.:format)       users#edit
#            user GET    /users/:id(.:format)            users#show
#                 PATCH  /users/:id(.:format)            users#update
#                 PUT    /users/:id(.:format)            users#update
#                 DELETE /users/:id(.:format)            users#destroy
#            root GET    /                               welcome#index
#           login GET    /login(.:format)                sessions#new
#                 POST   /login(.:format)                sessions#create
#          logout DELETE /logout(.:format)               sessions#destroy
#                 POST   /users/:id/:room_id(.:format)   users#add_favorite
#

Rails.application.routes.draw do
  resources :buildings
  resources :rooms
  resources :study_spots
  resources :users

  root 'welcome#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/users/:id/:room_id', to: 'users#add_favorite'
  delete '/users/:id/:room_id', to: 'users#remove_favorite'

  get '/users/new/admin', to: 'users#new_admin'

  put '/study_spots/:id/update_to_occupied', to: 'study_spots#update_to_occupied'
  put '/study_spots/:id/update_to_available', to: 'study_spots#update_to_available'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
