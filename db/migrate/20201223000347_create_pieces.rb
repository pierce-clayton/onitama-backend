class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :role
      t.integer :pos_x
      t.integer :pos_y

      t.timestamps
    end
  end
end
