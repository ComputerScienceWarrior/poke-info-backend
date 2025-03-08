class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :nickname
      t.string :type
      t.integer :poke_id
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :speed
      t.integer :special_def
      t.integer :special_atk
      t.integer :level
      t.integer :experience_points
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
