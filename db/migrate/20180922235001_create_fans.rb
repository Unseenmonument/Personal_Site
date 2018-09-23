class CreateFans < ActiveRecord::Migration[5.1]
  def change
    create_table :fans do |t|
      t.string :name
      t.string :country
      t.string :book
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
