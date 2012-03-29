API_ENDPOINT = YAML.load_file(File.expand_path(File.dirname(__FILE__) + '/../api_endpoints.yml'))['development'] if Rails.env.development?
