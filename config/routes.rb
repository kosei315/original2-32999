Rails.application.routes.draw do
  root to: "profiles#index"
  resources :profiles
  resources :memos
end
