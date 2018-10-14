class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :author
      t.string :title
      t.text :comments
      t.date :puslished
      t.text :story
      t.string :image

      t.timestamps
    end
  end
end
