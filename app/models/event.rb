class Event < ActiveRecord::Base
  attr_accessible :event_description, :event_place, :event_time, :immigrant_id, :longitude, :latitude
  belongs_to :immigrant
  
  geocoded_by :event_place
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, :reverse_geocode
end
