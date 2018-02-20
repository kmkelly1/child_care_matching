class CreateAvailableHours < ActiveRecord::Migration
  def change
    create_table :available_hours do |t|
      t.integer :provider
      t.datetime :time

      t.timestamps

    end
  end
end
