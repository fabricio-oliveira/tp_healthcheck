# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Health::HealthCheckController, type: :request do
  describe 'GET /healthcheck' do
    context 'When get healthcheck' do
      before do
        get health_healthcheck_path, nil, nil
      end
    end
  end
end
