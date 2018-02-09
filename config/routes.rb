Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks'
  }

  scope 'feedback' do
    resources :questions
    resources :answers, only: [:index, :create, :update]
  end

  scope 'admin' do
    resources :tags
  end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  root to: redirect("http://unbouncepages.com/mynoice/")
end
