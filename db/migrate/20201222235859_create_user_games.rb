class CreateUserGames < ActiveRecord::Migration[6.1]
  def change
    create_table :user_games do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.boolean :red
      t.boolean :won

      t.timestamps
    end
  end
end
