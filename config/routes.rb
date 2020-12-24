# frozen_string_literal: true

Rails.application.routes.draw do
  resources :accounts do
    resources :entry_logs
  end
  namespace :v1 do
    post 'sms/callback/:account_id', to: 'sms#callback'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
