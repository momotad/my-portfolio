Rails.application.routes.draw do
  root to: "profiles#index"
  resources :profiles, only: [:index] do
    collection do
      get 'about'
      get 'works'
    end
  end
end
