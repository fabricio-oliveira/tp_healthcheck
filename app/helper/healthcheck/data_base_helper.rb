# frozen_string_literal: true

module Healthcheck::DataBaseHelper
  def database_on?
    ActiveRecord::Base.connection.active?
  end
end
