require 'open-uri'

class PagesController < ApplicationController

  def home
  end

  def api
    zip = params[:zip]
    uri = "http://api.wunderground.com/api/" + Rails.application.secrets.wunder_key_d + "/hourly/q/" + zip + ".json"
    j = JSON.parse(open(uri).read)
    render json: j
  end
end
