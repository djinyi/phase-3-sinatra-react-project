class CreateWebcomics < ActiveRecord::Migration[6.1]
  def change
    create_table :webcomics do |t|
      t.string :title
      t.integer :creator_id
      t.string :genre
      t.string :description
      t.integer :price
      t.timestamps
    end
  end
end
