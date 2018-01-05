class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.integer :rating
      t.integer :guest_id
      t.integer :episode_id

      t.timestamps
    end
  end
end
