class AddValuesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :location, :string
    add_column :users, :avatar, :string
  end
end
