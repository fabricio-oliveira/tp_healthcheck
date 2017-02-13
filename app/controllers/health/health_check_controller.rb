# frozen_string_literal: true
class Health::HealthCheckController < ApplicationController
  def index
    render :plain, Rails.application.class.parent
  end
end
