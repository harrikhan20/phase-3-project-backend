class BasicMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :plot
      t.integer :movie_length
      t.string :actor_list
  end
end
end
