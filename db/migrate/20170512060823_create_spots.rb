class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name
      t.text  :address
      t.time :start_time
      t_time :last_admission_time
      t.time :end_time
      t.integer :fee
      t.boolean :parking
      t.timestamps null: false
    end
  end
end
