class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content, null: false
      t.integer :reviewer_id, null: false
      t.integer :restaurant_id, null: false

      t.timestamps
    end
  end
end
