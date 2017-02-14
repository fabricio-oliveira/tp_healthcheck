# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Healthcheck::CheckController, type: :request do
  describe 'GET /healthchecks/ping' do
    context 'When get healthcheck' do
      before do
        get '/healthchecks/ping', nil, nil
      end

      it 'Does return status_code: 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'Does return name project Dummy' do
        expect(response.body).to eq 'Dummy'
      end
    end

    describe 'GET /healthchecks/database' do
      context 'When database is up' do
        before do
          get '/healthchecks/database', nil, nil
        end

        it 'Does return status_code: 200' do
          expect(response).to have_http_status(:ok)
        end
      end
    end

    describe 'GET /healthchecks/fake' do
      context 'When get inexistent url' do
        before do
          get '/healthchecks/fake', nil, nil
        end

        it 'Does return status_code: 404' do
          expect(response).to have_http_status(:not_found)
        end
      end
    end
  end
end
