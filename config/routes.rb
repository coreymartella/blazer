Blazer::Engine.routes.draw do
  resources :queries do
    post :run, on: :collection # err on the side of caution
    get :run, on: :collection if Rails.env.development?
    post :refresh, on: :member
    get :tables, on: :collection
  end
  resources :checks, except: [:show] do
    get :run, on: :member
  end
  resources :dashboards do
    post :refresh, on: :member
  end
  root to: "queries#home"
end
