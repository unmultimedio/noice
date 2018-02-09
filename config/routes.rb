Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  scope 'feedback' do
    resources :questions
    resources :answers, only: [:index, :create, :update]
  end

  scope 'admin' do
    resources :tags
  end

  root to: "pages#landing"
end
