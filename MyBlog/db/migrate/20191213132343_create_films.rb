class CreateFilms < ActiveRecord::Migration[5.1]
  def change
    create_table :films do |t|
      t.string :name
      t.integer :year
      t.string :director
      t.text :discription
      t.string :actors

      t.timestamps
    end
  end
end
