class Immigrant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :nickname, :sex
  has_many :events
end
