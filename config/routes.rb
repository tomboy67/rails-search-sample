SearchSample::Application.routes.draw do

  resources :products, only: [:index] do
    collection do
      post :search
    end
  end
end
