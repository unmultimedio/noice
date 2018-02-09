Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }

  # Feedback
  resources :questions
  resources :answers, only: [:index, :create, :update]

  # Noice Sessions
  resources :noice_sessions

  scope 'admin' do
    resources :tags
  end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  get 'content', to: 'pages#content', as: :content
  get 'events', to: 'pages#events', as: :events

  root to: redirect("http://unbouncepages.com/mynoice/")
end
