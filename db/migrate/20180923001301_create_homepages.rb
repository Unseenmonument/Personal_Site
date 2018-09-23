class CreateHomepages < ActiveRecord::Migration[5.1]
  def change
    create_table :homepages do |t|
      t.string :home
      t.string :contaxt

      t.timestamps
    end
  end
end
