class CreateSpeedTests < ActiveRecord::Migration
  def change
    create_table :speed_tests do |t|
      t.datetime :datetime
      t.float :ping
      t.float :download
      t.float :upload

      t.timestamps null: false
    end
  end
end
