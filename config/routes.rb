Rails.application.routes.draw do
  get "homeworks/index"
  get "homeworks/show"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'static_pages#top';

  resources :homeworks, only: [:index, :show]
end
