class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :player_id
      t.integer :points
      t.boolean :current

      t.timestamps
    end
  end
end
