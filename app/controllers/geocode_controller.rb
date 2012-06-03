
require 'geocoder'

class GeocodeController < ApplicationController
  def geocode
    render :text => Geocoder.coordinates(params[:place])
  end

  def reverse_geocode
    render :text => Geocoder.address([params[:latitude],params[:longitude]])
  end

  def geocode_search
    render :text => Geocoder.search(params[:place]).map{|match| match.address}
  end
end
