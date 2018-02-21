class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :artis
      t.string :name
      t.references :playlist, foreign_key: true

      t.timestamps
    end
  end
end
