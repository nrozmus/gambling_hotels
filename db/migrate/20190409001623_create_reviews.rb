class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :length_of_stay
      t.text :comment
      t.references :room_type, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
