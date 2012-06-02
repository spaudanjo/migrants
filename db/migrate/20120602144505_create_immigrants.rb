class CreateImmigrants < ActiveRecord::Migration
  def change
    create_table :immigrants do |t|
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.boolean :sex

      t.timestamps
    end
  end
end
