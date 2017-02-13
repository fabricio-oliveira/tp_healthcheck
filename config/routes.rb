# frozen_string_literal: true
Rails.application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    namespace :healthcheck do
      get 'check', to: 'check#check'
      get 'database', to: 'check#database'
    end
  end
end
