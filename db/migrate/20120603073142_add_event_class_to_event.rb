class AddEventClassToEvent < ActiveRecord::Migration
  def change
    add_column :events, :type, :string
  end
end
