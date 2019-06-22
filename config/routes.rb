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
          get :authenticate
        end
      end
      resources :products, only: [:index, :show, :update, :create, :destroy] do
        collection do
          get :user_products
        end
      end
    end
  end

end
