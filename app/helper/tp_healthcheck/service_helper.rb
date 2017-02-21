# frozen_string_literal: true
require 'httparty'

module TPHealthcheck::ServiceHelper
  def resource_errors(file)
    config = YAML.load_file(file)
    status = {}
    config.each do |key, value|
      return nil unless %r{^(http|https):\/\/[a-z0-9\._]+$} =~ value['url']
      p "#{value['url']}:#{value['port']}"
      response = HTTParty.get("#{value['url']}:#{value['port']}")
      status[key] = { url: value['url'], body: response.body, status: response.code }
      # p response.methods
    end
    status
  end
end
