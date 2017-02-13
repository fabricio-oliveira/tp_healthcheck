# frozen_string_literal: true
module Healthcheck
  class CheckController < ApplicationController
    def index
      render plain: Rails.application.class.parent
    end
  end
end
