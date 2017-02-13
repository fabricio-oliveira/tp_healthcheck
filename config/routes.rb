# frozen_string_literal: true
Rails.application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    get 'healthcheck', to: 'health_check#index'
  end
end
