Acubens::Application.routes.draw do

  resources :localities


  resources :skin_surveys


  resources :membership do
	  collection do
		  get :index
		  post :verifymobile
		  post :register
		  post :login
		  post :logout
		  get :logout
		  post :changepsw
		  post :fillinfo
		  post :getinfo
		  get :getinfo
		  post :getaddr
		  get :getaddr
		  post :addaddr
		  post :updateaddr
		  post :deladdr
		  post :getdefaddr
		  get :getdefaddr
		  post :setdefaddr
		  get :setdefaddr
		  get :surveydone
		  post :surveydone
		  post :getpoint
		  get :getpoint
		  post :getpendingpoint
		  get :getpendingpoint
		  post :getavailpoint
		  get :getavailpoint
		  post :getpointproducts
		  get :getpointproducts
		  post :getpointredeemproducts
		  get :getpointredeemproducts
		  post :getpointredeemhistory
		  get :getpointredeemhistory
		  post :getpointlist
		  get :getpointlist
		  post :getusers
		  get :getusers
		  post :getdict
		  get :getdict
	  end
  end


  resources :order do
	  collection do
		  get :setorder
		  post :setorder
		  post :updateorder
	  end
  end


  get '/robots.txt' => 'application#robots'

  get 'admin', :to => redirect('/refinery')

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  mount Refinery::Core::Engine, :at => '/'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
