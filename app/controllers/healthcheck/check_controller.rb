# frozen_string_literal: true
class Healthcheck::CheckController < ApplicationController
  include Healthcheck::DataBaseHelper

  def check
    render plain: Rails.application.class.parent
  end

  def database
    render json: { code: '001', msg: 'database error' }.json, status: :internal_server_error unless database_on?
    head :ok
  end
end
