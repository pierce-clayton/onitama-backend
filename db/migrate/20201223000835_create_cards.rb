class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :animal
      t.integer :position
      t.boolean :red
      t.string :moves

      t.timestamps
    end
  end
end
