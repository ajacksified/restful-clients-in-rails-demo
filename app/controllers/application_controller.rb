require 'json'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def api_call(path, params={}, method=:get)
    uri = URI(API_ENDPOINT + "/" + path + ".json")

    if method == :get
      uri.query = URI.encode_www_form(params)
      res = Net::HTTP.get_response(uri)
    elsif method == :post
      res = Net::HTTP.post_form(uri, params)
    end

    case res
      when Net::HTTPSuccess
        ActiveSupport::JSON.decode(res.body)["response_data"]
      else
        res.body
        res.error!
      end
  end
end
