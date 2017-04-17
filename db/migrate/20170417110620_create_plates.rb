class CreatePlates < ActiveRecord::Migration[5.0]
  def change
    create_table :plates do |t|
      t.references :user, foreign_key: true
      t.string :plate
      t.string :meaning
      t.integer :sell_price

      t.timestamps
    end
  end
end
