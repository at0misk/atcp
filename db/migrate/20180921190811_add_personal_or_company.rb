class AddPersonalOrCompany < ActiveRecord::Migration[5.2]
  def change
  		add_column :users, :personal, :string
  end
end
