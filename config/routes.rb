Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  namespace :admin do
    resources :blogs
  end

  # namespace :admin do
  #   resources :users, only: [:edit, :update, :show]
  # end

end
