class CreateFilmimages < ActiveRecord::Migration[6.1]
  def change
    create_table :filmimages do |t|
      t.string :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
