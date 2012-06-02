
require 'geocoder'

class GeocodeController < ApplicationController
  def geocode
    render :text => Geocoder.coordinates(params[:place])
  end

  def reverse_geocode
    render :text => Geocoder.address([params[:latitude],params[:longitude]])
  end
end
