Rails.application.routes.draw do
  get 'photos/edit'

  get 'photos/index'

  get 'photos/new'

  get 'photos/show'

  get 'comments/edit'

  get 'comments/new'

  get 'albums/edit'

  get 'albums/index'

  get 'albums/new'

  get 'albums/show'

    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root "albums#index"

	  resources :albums do 
	  	resources :photos do
	  		resources :comments
	  	end
	  end

end
