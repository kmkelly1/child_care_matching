class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :guardian

      t.timestamps

    end
  end
end
