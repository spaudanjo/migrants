class Event < ActiveRecord::Base
  attr_accessible :event_description, :event_place, :event_time, :immigrant_id, :longitude, :latitude
  belongs_to :immigrant
  
  geocoded_by :event_place
  after_validation :geocode
end
