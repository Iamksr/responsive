class AddClmToTable < ActiveRecord::Migration[6.0]
  def change
  	add_column :table1s, :matches, :string
  	add_column :table1s, :kd, :string
  	add_column :table1s, :hd, :string
  	add_column :table1s, :die, :string

  	

  end
end
