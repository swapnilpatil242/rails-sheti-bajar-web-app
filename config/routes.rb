Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :categories, only: [:index] do
        member do
          get :products
        end
      end
      resources :users, only: [:show, :update, :create] do
        collection do
          post :authenticate
        end
      end
      resources :products, only: [:index, :show, :update, :create, :destroy] do
      end
    end
  end

end
