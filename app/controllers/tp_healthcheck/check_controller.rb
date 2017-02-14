# frozen_string_literal: true
class TPHealthcheck::CheckController < ApplicationController
  include TPHealthcheck::DataBaseHelper
  def show
    unless self.class.private_method_defined?(params[:cmd].to_sym)
      return render json: { url: 'url not found' }.to_json, status: :not_found
    end
    send(params[:cmd])
  end

  private

  def ping
    render plain: Rails.application.class.parent, status: :ok
  end

  def database
    unless database_on?
      return render json: { code: '01', msg: 'database error' }.json, status: :internal_server_error
    end
    render plain: 'OK', status: :ok
  end
end
