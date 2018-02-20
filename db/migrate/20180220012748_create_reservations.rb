class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :childcare_hours
      t.integer :available_hours

      t.timestamps

    end
  end
end
