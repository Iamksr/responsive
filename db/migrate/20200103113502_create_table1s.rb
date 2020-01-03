class CreateTable1s < ActiveRecord::Migration[6.0]
  def change
    create_table :table1s do |t|
      t.string :name
      t.datetime :date
      t.string :address
      t.integer :postcode

      t.timestamps
    end
  end
end
