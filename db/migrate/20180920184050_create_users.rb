class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :evo_id
      t.string :account_name
      t.string :agent_name
      t.string :routing
      t.string :account
      t.integer :type

      t.timestamps
    end
  end
end
