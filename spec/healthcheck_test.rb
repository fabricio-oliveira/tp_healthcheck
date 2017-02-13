require 'test_helper'

class HealthcheckTest < ActiveSupport::TestCase
  test 'truth' do
    assert_kind_of Module, Healthcheck
  end
end
