class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # FIXME: Horrible hack! Investigate why activerecord is not invalidate the cache!
  before_filter :invalidate_cache

  private

  def invalidate_cache
    Immigrant.reset_column_information
    Event.reset_column_information
  end
end
