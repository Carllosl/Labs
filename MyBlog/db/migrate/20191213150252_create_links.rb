class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.references :post, foreign_key: true
      t.references :film, foreign_key: true

      t.timestamps
    end
  end
end
