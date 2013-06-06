Glider::Application.routes.draw do
  resources :deal_members


  resources :inviteds
  resources :companies
  resources :comments
  resources :signatures
  resources :get_signatures
  resources :approvals
  resources :request_docs
  resources :uploads
  resources :deals

  match '/about',           to: 'static_pages#about'
  match '/contact',         to: 'static_pages#contact'
  match '/help',            to: 'static_pages#help'
  match '/documentation',   to: 'static_pages#documentation'
  match '/terms',           to: 'static_pages#terms'

  mount StripeEvent::Engine => '/stripe'
  get "content/gold"
  get "content/silver"
  get "content/platinum"
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  match '/pricing',           to: 'home#pricing'
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users
end