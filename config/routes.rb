Rails.application.routes.draw do
  get "homeworks/index"
  get "homeworks/show"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'static_pages#top';

  resources :homeworks, only: [:index, :show] do
    resources :tasks, only: [:index, :show]
  end

  resources :task_completions, only: [:create, :destroy]
end
