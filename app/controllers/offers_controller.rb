class OffersController < ApplicationController
  respond_to :html

  def index
    limit = params[:limit] || 5

    @offers = api_call("deals", { :limit => limit })
  end

  def show
    @offer = api_call("deals/" + params[:id])
  end
end

