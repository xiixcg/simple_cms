Rails.application.routes.draw do

  root 'young_testing#base'

  resources :subjects do

    member do
      get :delete
    end

  end

  get 'young_testing/base'

  get 'demo/index'

  get 'demo/hello'

  get 'demo/other_hello'

  get 'demo/young_base'

  get 'demo/lynda'

  # Default Route
  # May be disappering in newer Rails version
  # get ':controller(/:action(/:id))'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
