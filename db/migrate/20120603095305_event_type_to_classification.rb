class EventTypeToClassification < ActiveRecord::Migration
  def up
  	rename_column :events, :type, :classification
  end

  def down
  	rename_column :events, :classification, :type
  end
end
