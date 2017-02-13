# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Healthcheck::CheckController, type: :request do
  describe 'GET /healthcheck/check' do
    context 'When get healthcheck' do
      before do
        get healthcheck_check_path, nil, nil
      end

      it 'Does return status_code: 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'Does return name project Dummy' do
        expect(response.body).to eq 'Dummy'
      end
    end

    describe 'GET /healthcheck/database' do
      context 'When database is up' do
        before do
          get healthcheck_database_path, nil, nil
        end

        it 'Does return status_code: 200' do
          expect(response).to have_http_status(:ok)
        end
      end
    end
  end
end
