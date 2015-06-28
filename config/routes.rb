Rails.application.routes.draw do
  
  devise_for :users
  resources :interactions
  resources :legalissues
  resources :problems
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #GUIDANCE get '/(pathname_not_camel_cased)', to: 'controller_camel_cased(samename as path)#viewCamelCased'
   root 'home#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
   get '/businessplan', to: 'businessplan#businessPlan'    # verb 'path', to: 'controller#action'
   get '/backendprocess', to: 'backendprocess#backendProcess'
   get '/usertype', to: 'usertype#userType'
   get '/problem', to: 'problems#index'
   get '/legalissues', to: 'legalissues#index'
   
   #INTERACT TEMP STUFF HERE
   get '/interacttemp', to: 'interacttemp#interactTemp'
   get '/createanewrequest', to: 'createanewrequest#createANewRequest'
   
   #Image  Walk-Through ROUTES ONLY
   
   get '/sptcimage', to: 'sptcimage#sptcImage'   #
   get '/ctgspimage', to: 'ctgspimage#ctgspImage' #
   get '/ctspimage', to: 'ctspimage#ctspImage' #
   get '/gctspgimage', to: 'gctspgimage#gctspgImage' #
   get '/gsptcgimage', to: 'gsptcgimage#gsptcgImage' #
   get '/gsptcimage', to: 'gsptcimage#gsptcImage' #
   get '/ilsimage', to: 'ilsimage#ilsImage'  #
   get '/sptgcimage', to: 'sptgcimage#sptgcImage' #
   get '/gctspimage', to: 'gctspimage#gctspImage' #
   get '/adminimage', to: 'adminimage#adminImage' #
   
   #Verbal Walk-through ROUTES ONLY
   
   get '/sptcvwt', to: 'sptcvwt#sptcVWT' #
   get '/ctgspvwt', to: 'ctgspvwt#ctgspVWT' # 
   get '/ctspvwt', to: 'ctspvwt#ctspVWT' #
   get '/gctspgvwt', to: 'gctspgvwt#gctspgVWT' #
   get '/gsptcgvwt', to: 'gsptcgvwt#gsptcgVWT' #
   get '/gsptcvwt', to: 'gsptcvwt#gsptcVWT'
   get '/ilsvwt', to: 'ilsvwt#ilsVWT' #
   get '/sptgcvwt', to: 'sptgcvwt#sptgcVWT' # 
   get '/gctspvwt', to: 'gctspvwt#gctspVWT' #
   get '/adminvwt', to: 'adminvwt#adminVWT'  #
   
   #Playground routes
   get '/playground', to: 'playground#playGround' #
   get '/vcrtemp', to: 'vcrtemp#vCrTemp' #
   
   
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
