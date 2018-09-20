class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :pay_type, :string
  	add_column :users, :address, :string
  	add_column :users, :phone, :string
  end
end
