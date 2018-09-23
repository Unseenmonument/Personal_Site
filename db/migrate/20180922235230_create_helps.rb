class CreateHelps < ActiveRecord::Migration[5.1]
  def change
    create_table :helps do |t|
      t.string :genre
      t.string :task
      t.string :country
      t.string :timeframe
      t.text :comments

      t.timestamps
    end
  end
end
