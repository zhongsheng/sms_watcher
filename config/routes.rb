Rails.application.routes.draw do
  resources :accounts
  namespace :v1 do
    post 'sms/callback/:account_id', to: 'sms#callback'
  end
  resources :entry_logs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
