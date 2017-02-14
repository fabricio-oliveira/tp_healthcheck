# frozen_string_literal: true
class Healthcheck::CheckController < ApplicationController
  include Healthcheck::DataBaseHelper

  def show
    send(params[:cmd])
  end

  private

  def ping
    render plain: Rails.application.class.parent
  end

  def database
    unless database_on?
      return render json: { code: '01', msg: 'database error' }.json, status: :internal_server_error
    end
    render plain: 'OK', status: ok
  end
end
