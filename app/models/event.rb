class Event < ActiveRecord::Base
  attr_accessible :event_description, :event_place, :event_time, :immigrant_id
  belongs_to :immigrant
end
