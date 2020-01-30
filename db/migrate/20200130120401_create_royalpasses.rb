class CreateRoyalpasses < ActiveRecord::Migration[6.0]
  def change
    create_table :royalpasses do |t|
      t.string :name
      t.string :rp
      t.string :pts
      t.string :rnk

      t.timestamps
    end
  end
end
