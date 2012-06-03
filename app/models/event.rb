class Event < ActiveRecord::Base
  attr_accessible :event_description, :event_place, :event_time, :immigrant_id, :longitude, :latitude, :classification
  belongs_to :immigrant
  
  geocoded_by :event_place
  after_validation :geocode
  
  def self.EVENT_CLASSIFICATIONS
  	 ["other", "pushback", "detained", "torture"]
  end
end
