require 'rack/reverse_proxy'

API_ENDPOINT = YAML.load_file(File.expand_path(File.dirname(__FILE__) + '/../api_endpoints.yml'))['development'] if Rails.env.development?

Rails.application.config.middleware.insert_before(Rack::Lock, Rack::ReverseProxy) do
  reverse_proxy '/api/(.*)', "#{API_ENDPOINT}/$1"
end
