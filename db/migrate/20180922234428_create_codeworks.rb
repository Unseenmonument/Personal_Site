class CreateCodeworks < ActiveRecord::Migration[5.1]
  def change
    create_table :codeworks do |t|
      t.string :company
      t.string :city
      t.string :state
      t.string :postion
      t.integer :salary
      t.text :comments

      t.timestamps
    end
  end
end
