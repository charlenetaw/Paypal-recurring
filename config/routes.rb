Saas::Application.routes.draw do
  root to: 'plans#new'
  resources :subscriptions
  resources :plans
  get 'paypal/checkout', to: 'subscriptions#paypal_checkout'
  get 'cancel/cancel', to: 'subscriptions#cancel'
end
