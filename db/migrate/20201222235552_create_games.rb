class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :state
      t.integer :winner_id

      t.timestamps
    end
  end
end
