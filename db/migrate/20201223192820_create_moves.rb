class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :current_player
      t.references :piece, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true
      t.integer :piece_x_start
      t.integer :piece_y_start
      t.integer :piece_x_end
      t.integer :piece_y_end
      t.integer :card_start
      t.integer :card_end

      t.timestamps
    end
  end
end
