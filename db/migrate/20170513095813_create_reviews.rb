class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.integer :user_id
      t.integer :spot_id
      t.text    :review
      t.timestamps null: false
    end
  end
end
