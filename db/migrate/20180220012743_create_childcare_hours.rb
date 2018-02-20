class CreateChildcareHours < ActiveRecord::Migration
  def change
    create_table :childcare_hours do |t|
      t.integer :child
      t.datetime :time

      t.timestamps

    end
  end
end
