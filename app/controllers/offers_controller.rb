class OffersController < ApplicationController
  respond_to :html

  def index
    @offers = api_call("deals")
  end

  def show
    @offer = api_call("deals/" + params[:id])
  end
end

