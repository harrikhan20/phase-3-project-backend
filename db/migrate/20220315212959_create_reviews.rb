class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :text
      t.integer :rating
      t.belongs_to :movie

      t.timestamps null: false
    end
  end
end
