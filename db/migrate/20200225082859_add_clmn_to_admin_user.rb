class AddClmnToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :current_sign_in_at, :integer
    add_column :admin_users, :sign_in_count, :integer
  end
end
